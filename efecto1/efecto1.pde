  int i,j;
  int a,r,g,b; 
  void setup() {
       size(800,600 );
       stroke(255);
       a = int(random(255))<<24;
       r = int(random(255))<<16;
       g = int(random(255))<<8;
       b = int(random(255));
     } 

     void draw() {
       if (second()%1==0){
           a = int(random(255))<<24;
           r = int(random(255))<<16;
           g = int(random(255))<<8;
           b = int(random(255));    
       }
       for(i=0;i<width;i+=50){
         for(j=0;j<height;j+=50){
           ellipse(i+int(random(-50,50)),j+int(random(-50,50)),random(30),random(30));
           a += int(random(5))<<24; a = a & 11111111<<24;
           r += int(random(20))<<16; r = r & 11111111<<16;
           g += int(random(20))<<8; g = g & 11111111<<8;
           b += int(random(20)); b = b & 11111111;
           // OR the values together:    11111111110011001100110000110011 
           color argb = a | r | g | b;
           fill(argb);
           stroke(argb>>3);
         }
       }
     }
     
     
     
