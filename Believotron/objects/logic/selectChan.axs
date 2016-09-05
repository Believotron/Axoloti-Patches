<objdefs appVersion="1.0.10">
   <obj.normal id="selectChan" uuid="5caf0ba1-8f09-4ac1-a88e-2a643ca7d62f">
      <sDescription>binary encoder (8 bit plus sign) i0</sDescription>
      <author>Sputnki</author>
      <license>BSD</license>
      <inlets>
         <bool32 name="b0" description="bit 0 LSB"/>
         <bool32 name="b1" description="bit 1"/>
         <bool32 name="b2" description="bit 2"/>
         <bool32 name="b3" description="bit 3"/>
         <bool32 name="b4" description="bit 4"/>
         <bool32 name="b5" description="bit 5"/>
         <bool32 name="b6" description="bit 6"/>
         <bool32 name="b7" description="bit 7 MSB"/>
      </inlets>
      <outlets>
         <int32 name="out" description="output"/>
      </outlets>
      <displays/>
      <params/>
      <attribs/>
      <code.declaration><![CDATA[int i_out;]]></code.declaration>
      <code.krate><![CDATA[
	  i_out = inlet_b0*1 + inlet_b1*2 + inlet_b2*4 + inlet_b3*8 + inlet_b4*16 + inlet_b5*32 + inlet_b6*64 + inlet_b7*128 ;
	  if (inlet_sign==1)
	  i_out=-1-i_out;
	  outlet_out = i_out;
]]></code.krate>
   </obj.normal>
</objdefs>