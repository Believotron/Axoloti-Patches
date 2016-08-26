<objdefs appVersion="1.0.10">
   <obj.normal id="BtoI16Trig" uuid="d654afea-6ee8-4166-853b-b06b86cf2b34">
      <sDescription>Outputs an integer between 0 and 3, depending on the last input to see a rising edge.</sDescription>
      <author>Jeppe Rasmussen</author>
      <license>BSD</license>
      <helpPatch>last_rising.axh</helpPatch>
      <inlets>
         <bool32.rising name="i0"/>
         <bool32.rising name="i1"/>
         <bool32.rising name="i2"/>
         <bool32.rising name="i3"/>
         <bool32.rising name="i4"/>
         <bool32.rising name="i5"/>
         <bool32.rising name="i6"/>
         <bool32.rising name="i7"/>
      </inlets>
      <outlets>
         <int32.positive name="o0"/>
      </outlets>
      <displays/>
      <params/>
      <attribs/>
      <code.declaration><![CDATA[   int ntrig0;   int latch;
   int ntrig1; 
   int ntrig2;
   int ntrig3;
   int ntrig4;
   int ntrig5;
   int ntrig6;
   int ntrig7;]]></code.declaration>
      <code.krate><![CDATA[if ((inlet_i0>0) && !ntrig0) {latch = 0;}
if(!(inlet_i0>0)) ntrig0=0;

if ((inlet_i1>0) && !ntrig1) {latch = 1;}
if(!(inlet_i1>0)) ntrig1=0;

if ((inlet_i2>0) && !ntrig2) {latch = 2;}
if(!(inlet_i2>0)) ntrig2=0;

if ((inlet_i3>0) && !ntrig3) {latch = 3;}
if(!(inlet_i3>0)) ntrig3=0;

if ((inlet_i4>0) && !ntrig4) {latch = 4;}
if(!(inlet_i4>0)) ntrig4=0;

if ((inlet_i5>0) && !ntrig5) {latch = 5;}
if(!(inlet_i5>0)) ntrig5=0;

if ((inlet_i6>0) && !ntrig6) {latch = 6;}
if(!(inlet_i6>0)) ntrig6=0;

if ((inlet_i7>0) && !ntrig7) {latch = 7;}
if(!(inlet_i7>0)) ntrig7=0;

outlet_o0= latch;]]></code.krate>
   </obj.normal>
</objdefs>