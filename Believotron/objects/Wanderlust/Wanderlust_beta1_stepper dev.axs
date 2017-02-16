<patch-1.0 appVersion="1.0.12">
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_7" x="0" y="0">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="1540" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_2" x="1120" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="instruments/ADSR OSC" uuid="c5a22d8c-e6d9-4403-a1ea-8d724c0a80ec" name="obj_3" x="1344" y="28">
      <params>
         <frac32.s.map name="noteMod" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="Wanderlust/Volume Out" uuid="4c32af6c-47e2-4e74-8b97-37dfb4d76913" name="obj_4" x="1624" y="56">
      <params>
         <bool32.tgl name="Enable Vol Knob" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="Wanderlust/Wanderlust_beta1" uuid="4b4a7c45-923f-4809-b307-bdfb6f04094f" name="obj_1" x="140" y="112">
      <params>
         <bool32.tgl name="Reverse Knobs" value="1"/>
         <bool32.tgl name="Rev Padrow Top" value="0"/>
         <bool32.tgl name="Rev Padrow Bottom" value="0"/>
         <int32 name="LED Mode" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="save" x="490" y="112">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_4" x="14" y="154">
      <params>
         <int32 name="value" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="644" y="154">
      <params>
         <frac32.s.map name="delay" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="16_Step_SynthModel" uuid="a3ba2934-1b58-4f80-b807-0da04d8fffe5" name="16_Step_SynthModel_1" x="910" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="load" x="490" y="182">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_3" x="1344" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_2" x="1442" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_4" x="1344" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/KnobRowColumnSel16x4" uuid="c2bf8d4c-e2a2-460d-bcba-eeff967c6409" name="obj_6" x="364" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_5" x="1344" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_6" x="1344" y="462">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="obj_1" outlet="knob_top_0"/>
         <dest obj="16_Step_SynthModel_1" inlet="AttackIn"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_top_1"/>
         <dest obj="16_Step_SynthModel_1" inlet="DecayIn"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_top_2"/>
         <dest obj="16_Step_SynthModel_1" inlet="SustainIn"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_top_3"/>
         <dest obj="16_Step_SynthModel_1" inlet="ReleaseIn"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_top_4"/>
         <dest obj="16_Step_SynthModel_1" inlet="VolumeIn"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_top_5"/>
         <dest obj="16_Step_SynthModel_1" inlet="PitchIn"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="VolumeOut"/>
         <dest obj="dial_1" inlet="in"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="PitchOut"/>
         <dest obj="dial_2" inlet="in"/>
         <dest obj="obj_3" inlet="Base Note"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="AttackOut"/>
         <dest obj="dial_3" inlet="in"/>
         <dest obj="obj_3" inlet="attack"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="DecayOut"/>
         <dest obj="dial_4" inlet="in"/>
         <dest obj="obj_3" inlet="decay"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="SustainOut"/>
         <dest obj="dial_5" inlet="in"/>
         <dest obj="obj_3" inlet="sustain"/>
      </net>
      <net>
         <source obj="16_Step_SynthModel_1" outlet="ReleaseOut"/>
         <dest obj="dial_6" inlet="in"/>
         <dest obj="obj_3" inlet="release"/>
      </net>
      <net>
         <source obj="i_4" outlet="out"/>
         <dest obj="obj_1" inlet="Color In"/>
      </net>
      <net>
         <source obj="dial_7" outlet="out"/>
         <dest obj="obj_1" inlet="Intensity"/>
      </net>
      <net>
         <source obj="obj_6" outlet="stepnum"/>
         <dest obj="obj_1" inlet="step"/>
         <dest obj="16_Step_SynthModel_1" inlet="stepIn_"/>
         <dest obj="16_Step_SynthModel_1" inlet="stepOut_"/>
      </net>
      <net>
         <source obj="obj_3" outlet="out"/>
         <dest obj="obj_4" inlet="left"/>
         <dest obj="obj_4" inlet="right"/>
      </net>
      <net>
         <source obj="obj_1" outlet="parasailing"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="obj_3" inlet="trigger"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_bot_6"/>
         <dest obj="obj_6" inlet="Row"/>
      </net>
      <net>
         <source obj="obj_1" outlet="knob_bot_7"/>
         <dest obj="obj_6" inlet="Col"/>
      </net>
      <net>
         <source obj="obj_6" outlet="chchchchanges"/>
         <dest obj="pulselength_1" inlet="trig"/>
      </net>
      <net>
         <source obj="save" outlet="o"/>
         <dest obj="16_Step_SynthModel_1" inlet="saveToSD"/>
      </net>
      <net>
         <source obj="load" outlet="o"/>
         <dest obj="16_Step_SynthModel_1" inlet="loadFromSD"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-1928</x>
      <y>-91</y>
      <width>1723</width>
      <height>976</height>
   </windowPos>
</patch-1.0>