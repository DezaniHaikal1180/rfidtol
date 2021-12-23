#include <SPI.h>
#include <Ethernet.h>
#include <ArduinoJson.h> //6.17.3
#include <SPI.h>
#include <MFRC522.h>
#include <Servo.h>
#include <NewPing.h>

// replace the MAC address below by the MAC address printed on a sticker on the Arduino Shield 2
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
//IPAddress ip(192, 168, 0, 102);

EthernetClient client;

int    HTTP_PORT   = 80;
String HTTP_METHOD = "GET";
char   HOST_NAME[] = "192.168.148.63"; // change to your PC's IP address
String PATH_NAME   = "/Project/data-api.php";
String getData;

String uidString;
int triger=3;
int echo=2;
int batas=400;
int buzzer=A2;
int servo=5;
int ledR=6;
int ledG=7;
int kunci=0;


#define SS_PIN 9
#define RST_PIN 8
MFRC522 mfrc522(SS_PIN,RST_PIN);
Servo myservo;
NewPing cm(triger,echo,batas); 


void setup() {
  Serial.begin(115200);
  SPI.begin();
  mfrc522.PCD_Init();
  myservo.attach(servo);
  pinMode(buzzer,OUTPUT);
  pinMode(ledR,OUTPUT);
  pinMode(ledG,OUTPUT);
   //START IP DHCP
  Serial.println("Konfigurasi DHCP, Silahkan Tunggu!");
  if (Ethernet.begin(mac) == 0) {
    Serial.println("DHCP Gagal!");
    if (Ethernet.hardwareStatus() == EthernetNoHardware) {
      Serial.println("Ethernet Tidak tereteksi :(");
    } else if (Ethernet.linkStatus() == LinkOFF) {
      Serial.println("Hubungkan kabel Ethernet!");
    }
    while (true) {delay(1);}
  }
  // initialize the Ethernet Settin  Ethernet.begin(mac, ip);
  Serial.print("IP address: ");
  Serial.println(Ethernet.localIP());  
  client.connect(HOST_NAME, HTTP_PORT);
  Serial.println("SIAP DIGUNAKAN");
  digitalWrite(ledR,HIGH);
  delay(1000);
  digitalWrite(ledG,LOW);
  //Show UID on serial monitor
  myservo.write(0);
}

void loop() {
    int bacaJarak = cm.ping_cm();
    delay(500);
    
   if(kunci==0){ 
   if ( ! mfrc522.PICC_IsNewCardPresent()) {return;}
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) {return;}
  
  
  Serial.print("UID tag :");
  String uidString;
  byte letter;
  for (byte i = 0; i < mfrc522.uid.size; i++) 
  {
     uidString.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? "" : ""));
     uidString.concat(String(mfrc522.uid.uidByte[i], HEX));
  }
  Serial.print("Message : ");
  uidString.toUpperCase();
  Serial.println(uidString);
  
// make a HTTP request:
    // send HTTP header
    client.connect(HOST_NAME, HTTP_PORT);
    client.println(HTTP_METHOD + " " + PATH_NAME + 
                   "?rfid=" + String(uidString) + 
                   "&nama_tol=Jagorawi" +
//                   "&sensor1=" + String(sensor1) + 
//                   "&sensor2=" + String(sensor2) + 
                   " HTTP/1.1");
    client.println("Host: " + String(HOST_NAME));
    client.println("Connection: close");
    client.println(); // end HTTP header
    
    while(client.connected()) {
      if(client.available()){
        char endOfHeaders[] = "\r\n\r\n";
        client.find(endOfHeaders);
        getData = client.readString();
        getData.trim();
        Serial.println(getData);

        //AMBIL DATA JSON
        const size_t capacity = JSON_OBJECT_SIZE(5) + 80; //cari dulu nilainya pakai Arduino Json 5 Asisten
        DynamicJsonDocument doc(capacity);
        //StaticJsonDocument<192> doc;
        DeserializationError error = deserializeJson(doc, getData);
//      
        const char* rfid_dibaca         = doc["rfid"];
        const char* nama_dibaca         = doc["nama"];
        const char* saldo_dibaca        = doc["saldo"];
        const char* namatol_dibaca      = doc["nama_tol"];
        const char* ceksaldo_dibaca     = doc["ceksaldo"];
       
//        
       //POST TO SERIAL
//       Serial.print("ID       = ");Serial.println(id_dibaca);
//       Serial.print("RFID     = ");Serial.println(rfid_dibaca);
//       Serial.print("NAMA     = ");Serial.println(nama_dibaca);
//       Serial.print("ALAMAT   = ");Serial.println(alamat_dibaca);
//       Serial.print("TELEPON  = ");Serial.println(telepon_dibaca);
//       Serial.print("TANGGAL  = ");Serial.println(tanggal_dibaca);
//       Serial.print("SALDO    = ");Serial.println(saldo_dibaca);
//       Serial.print("NAMA TOL = ");Serial.println(namatol_dibaca);
//       Serial.print("CEK SALDO= ");Serial.println(ceksaldo_dibaca);
//       Serial.println();

        if(String(nama_dibaca)!="tidakterdaftar" && String(ceksaldo_dibaca)=="cukup"){
              Serial.println("------------------------------------------------------------");
              buzzeroke();
              myservo.write(90);
              digitalWrite(ledR,LOW);
              digitalWrite(ledG,HIGH);
              Serial.println("PALANG DIBUKA!");
              Serial.println("------------------------------------------------------------");
              Serial.println("Selamat Jalan, Selamat Sampai Tujuan!");
              Serial.print("RFID     = ");Serial.println(rfid_dibaca);
              Serial.print("Nama     = ");Serial.println(nama_dibaca);
              Serial.print("Saldo    = ");Serial.println(saldo_dibaca);
              Serial.print("Nama Tol = ");Serial.println(namatol_dibaca);
              Serial.println("------------------------------------------------------------");
              kunci=1;
           }else if(String(nama_dibaca)!="tidakterdaftar" && String(ceksaldo_dibaca)=="kurang"){
              Serial.println("------------------------------------------------------------");
              digitalWrite(ledR,HIGH);
              digitalWrite(ledG,LOW);
              Serial.println("Mohon Maaf Saldo Anda kurang, Segera Melakukan Top Up!");
              Serial.print("RFID     = ");Serial.println(rfid_dibaca);
              Serial.print("Nama     = ");Serial.println(nama_dibaca);
              Serial.print("Saldo    = ");Serial.println(saldo_dibaca);
              Serial.print("Nama Tol = ");Serial.println(namatol_dibaca);
              Serial.println("------------------------------------------------------------");
              buzzergagal();
           }else{
              kunci=0;
              Serial.println("------------------------------------------------------------");
              Serial.println("Mohon Maaf Kartu Anda Tidak Terdaftar!");
              Serial.print("RFID = "); Serial.println(rfid_dibaca);
              Serial.print("Nama     = ");Serial.println(nama_dibaca);
              Serial.print("Saldo    = ");Serial.println(saldo_dibaca);
              Serial.print("Nama Tol = ");Serial.println(namatol_dibaca);
              Serial.println("------------------------------------------------------------");
              buzzergagal();
           }
      }
    }
   }
      //START MERUBAH JEDA 1 ke 0
    //LOGIKA UNTUK INFORMASI DAN MEMBUKA / MENUTUP PALANG MERUBAH JEDA
      //Serial.print("Sensor =");Serial.println(sensor);
      //Serial.print("Jeda =");Serial.println(jeda);
    if(bacaJarak<=5 && kunci==1 && bacaJarak!=0){ //Jika Sensor Infrared mendeteksi dan keadaan Jeda Sudah menjadi 1
        digitalWrite(ledG,LOW);
        digitalWrite(ledR,HIGH);
        myservo.write(0);
        buzzer1x();
        Serial.println("------------------------------------------------------------");
        Serial.println("PALANG DITUTUP!");
        Serial.println("------------------------------------------------------------");
        kunci=0; //Merubah Kondisi jeda
        delay(1000);
    } 
    //END MERUBAH JEDA 0
   
}
void buzzeroke(){
  digitalWrite(buzzer,HIGH);
  delay(100);
  digitalWrite(buzzer,LOW);
  delay(100);
  digitalWrite(buzzer,HIGH);
  delay(100);
  digitalWrite(buzzer,LOW);
  delay(100);
}

void buzzer1x(){
  digitalWrite(buzzer,HIGH);
  delay(100);
  digitalWrite(buzzer,LOW);
}

void buzzergagal(){
  digitalWrite(buzzer,HIGH);
  delay(1000);
  digitalWrite(buzzer,LOW);
}
