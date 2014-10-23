Conv_um_Diag : dialog {
  key = "Title";
  label = ""; //Title$ from lsp file
  initial_focus = "Op";
  spacer;

:row {

:column{
width=50.0;
fixed_width=true;

  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
      : text {
        key = "Oplbl";
        label = "Operation #:.";
      }
    }
    : edit_box {
      key = "OpNum";//OpNum$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
  }//>

  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
      : text {
        key = "FileOutputlbl";
        label = "Output File:";
      }
    }
    : edit_box {
      key = "OutputFile";//OutputFile$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
  }//>
  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
      : text {
        key = "FolderOutput";
        label = "Output Folder:";
      }
    }
    : edit_box {
      key = "OutputFolder";
      edit_width = 30.0;
      fixed_width = true;
    }
: button {
     
      key = "FindDirectory";
      is_default = true;
      label = "";
      width = 1.0;
      fixed_width = true;
    }

  }//>
  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
      : text {
        key = "YourName";
        label = "Your Name";
      }
}
    : edit_box {
      key = "U_name";//U_name$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
 : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "PIlbl";
        label = "PI";
      }
}
    : edit_box {
      key = "PI_name";//PI_name from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
: row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "PNamelbl";
        label = "Part Name";
      }
}
    : edit_box {
      key = "PName";
      edit_width = 30.0;
      fixed_width = true;
    }
}//>

 : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "Email";
        label = "Email";
      }
}
    : edit_box {
      key = "Email_Addy";//EmailAddy$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "AddressL1";
        label = "Address";
      }
}
    : edit_box {
      key = "AddressL1_E";//AddressL1_E$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "AddressL2";
        label = "";
      }
}
    : edit_box {
      key = "AddressL2_E";//AddressL2_E$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
  : row {//<
    fixed_width = true;
    : column {
      width = 20.0;
      fixed_width = true;
      spacer;
    : text {
        key = "PhoneL";
        label = "Phone:";
      }
}
    : edit_box {
      key = "Phone";//Phone$ from lsp file
      edit_width = 30.0;
      fixed_width = true;
    }
}//>
: row {//<

:column {
       
       fixed_width = true;
       width=15.0;
:row {
    : text {
        key = "SerialLbl";
        label = "Serial (8 max):";
		width=18.5;
}
    : edit_box {
      key = "Serial";//Phone$ from lsp file
      edit_width = 12.0;
      alignment=left;
    }
	: text {
        key = "SerialToolLbl";
        label = " Use Tool:";
        alignment=right;
      }
  : edit_box {
      key = "ToolforSerial";//Phone$ from lsp file
      edit_width = 2.0;
      fixed_width = true;
      alignment = left;
       }
}
}

:row {


}
}//>
  spacer;
: toggle {
        key = "AlignPins";
        label = "Add holes for alignment pins";
      }
: toggle {
        key = "WidthCorr";
        label = "Correct for tool diameter";
      }
: toggle {
        key = "Cutinhalf";
        label = "Cut device in two";
      }
: toggle {
        key = "Addser";
        label = "Machine Serial in arm";
      }
: toggle {
        key = "Addlibrary";
        label = "Include serializing library to G-CODE file";
      }
: toggle {
        key = "Linenumbers";
        label = "Add line numbers to G-CODE file";
      }
: toggle {
        key = "MachStops";
        label = "Machine stops between layers";
      }
: toggle {
        key = "Verbose";
        label = "Verbose output during processing";
      }
}

:column{

width=5.0;
fixed_width=true;

}

:column{
width=80.0;
fixed_width=true;

:row{
width=80.0;
fixed_width=true;
: row {
: list_box { 
key="Allayers"; 
label="Available layers"; 
height=10;
width=40;
multiple_select=false;
}
:column {
:row{spacer;}
:row{spacer;}
:row{spacer;}
: button {
      key = "LayerAdd";
      is_default = true;
      label = ">";
      width = 5;
      fixed_width = true;
    }
: button {
      key = "LayerRem";
      is_default = true;
      label = "<";
      width = 5;
      fixed_width = true;
    }
:row{spacer;}
:row{spacer;}
:row{spacer;}
}
: list_box { 
key="LayertoProcess"; 
label="Layer to Process"; 
height=10;
width=40;
multiple_select=false;
}
:column{
:row{spacer;}
:row{spacer;}
:row{spacer;}
: button {
      key = "LayerUp";
      label = "Up";
      width = 10;
      fixed_width = true;
    }
: button {
      key = "LayerDwn";
      label = "Down";
      width = 10;
      fixed_width = true;
    }
:row{spacer;}
:row{spacer;}
:row{spacer;}
}
}
}
:row{
:text{
fixed_width=true;
width=20.0;
key="tlabel";
label="Tool Settings";
}
}
:row{
spacer;
}
:row {
:column{
:text{
key="dialbl";
label="Diameter";
}
:edit_box{
key="TWidth";
edit_width=5.0;
fixed_width=true;
}
}
:column {
:text {
key="typelbl";
label="Type";
}
: popup_list {
                key = "TOOLTYPE";
                label = "";
                fixed_width_font = true;
                width = 3.0;
                value = "";
              }
}
:column {
:text{
key="numblbl";
label="Tool #";
}
:edit_box{
key="TNumber";
edit_width=5.0;
fixed_width=true;
}
}
:column {
:text{
key="depthlbl";
label="Depth";
}
:edit_box{
key="TLDepth";
edit_width=5.0;
fixed_width=true;
}
}
:column {
:text{
key="rpmblbl";
label="RPM";
}
:edit_box{
key="TLRPM";
edit_width=6.0;
fixed_width=true;
}
}
:column {
:text{
key="fwdlbl";
label="Fwd Spd";
}
:edit_box{
key="TLFWDSPD";
edit_width=6.0;
fixed_width=true;
}
}
:column {
:text{
key="dwnlbl";
label="Dwn Spd";
}
:edit_box{
key="TLDWNSPD";
edit_width=6.0;
fixed_width=true;
}}
:column {
:text{
key="uplbl";
label="Up Spd";
}
:edit_box{
key="TLUPSPD";
edit_width=6.0;
fixed_width=true;
}}

:column {
:row {
:text{
key="CWblbl";
label="CW";
}
:text{
key="CCWblbl";
label="CCW";
}
}

:radio_row {
    key="Rot";
    : radio_button {
      key = "CW";
    }
    : radio_button {
      key = "CCW";
    }
  }

}
}
:row{
width=40;
:column{
width=20;
:row{
: toggle {
        key = "Pdia";
        label = "Use ratio ";
      }
:edit_box{
       fixed_width=true;
       key="Prat";
       width=3.0;
}
:text{
       key="PeckRatiolbl";
       label="for peck depth.";
}
:text{
    width=0.0;
	key="PeckRatiolbl2";
	label="If not, use ";
}
:edit_box{
fixed_width=true;
	key="defPrat";
	width=3.0;
}
:text{
width=0.0;
fixed_width=true;
label="P";
key="pauselbl";
}
:edit_box{
	key="ppause";
	width=3.0;
	}
}}
:column{
width=20;
:row{
}
}
}	
:row{
width=2.0;
: toggle {
        key = "CPrat";
        label = "Adjust peck for movement floor and material thickness";
      }
	  }
	:row{  
:column{
:row{
fixed_width=true;
width=21.0;
	  :toggle{
key="GC_In";
label="Insert G-code";
fixed_width=true;
width=0.0;
}
spacer;
:edit_box{
key="InsertGcode";
fixed_width=true;
width=40.0;
}
spacer;
:button{
fixed_width=true;
key="LdGcode";
label="";
width=2.0;
}
}
}
:column{spacer;}}

:row{
spacer;
}

:row{
:column{
width=15.0;
fixed_width=true;
: row{
fixed_width=true;
:text{
width= 21.0;
fixed_width=true;
key="MoveFloor";
label="Movement Floor";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="MoveFlr";
}
}

: row{
width=2.0;
fixed_width=true;
:text{
width= 21.0;
fixed_width=true;
key="Matlbl";
label="Material";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="Mat";
}
}

: row{
width=2.0;
fixed_width=true;
:text{
fixed_width=true;
width= 21.0;
key="Matwidthlbl";
label="Material Width";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="MatWidth";
}
}

: row{
fixed_width=true;
width=2.0;
:text{
fixed_width=true;
width= 21.0;
key="WorkPlanelbl";
label="Work Plane (54-58)";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="WrkPlane";
}
}

: row{
width=10.0;
fixed_width=true;
: toggle {
        key = "DWGUNITS";
        label = "DWG in MM";
      }

: toggle {
        key = "TOOLUNITS";
        label = "TOOLS in MM";
      }
}

: row{
width=2.0;
fixed_width=true;
:text{
width= 21.0;
fixed_width=true;
key="DWGZeropntlblx";
label="DWG Zero Point X";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="DWGZeropntx";
}
}

: row{
fixed_width=true;
width=2.0;

:text{
fixed_width=true;
width= 21.0;
key="DWGZeropntlbly";
label="DWG Zero Point Y";
}
: edit_box {
width = 2.0;
fixed_width=true;
key="DWGZeropnty";
}
}

:row{
fixed_width=true;
width=2.0;
: boxed_radio_row {
    key = "Units";
    label = "Output in ";
    width = 2;
    fixed_width = true;
    : radio_button {
      key = "IN";
      label = "IN AND IN/S";
    }
    : radio_button {
      key = "MM";
      label = "MM AND MM/S";
    }
  }
}
:row{
width=2.0;
fixed_width=true;
: toggle {
        key = "ZMapY";
        label = "Adjust Z using vertical alignment map";
      }
}

:row{
width=2.0;
fixed_width=true;
: toggle {
        key = "ZAdju";
        label = "Process Z-change in elements";
      }
}

:row{
width=2.0;
fixed_width=true;

}
:row{
width=0.0;
fixed_width=true;
}
}
:column{
alignment=left;
fixed_width=true;
width=2.0;

:row{
fixed_width=true;
width=30.0;
:text{
fixed_width=true;
label="X: ";
width=0.0;
}
:edit_box{
width=0.0;
fixed_width=true;
key="X_in";
}
spacer;
spacer;
:text{
fixed_width=true;
label="Y:";
width=0.0;
}
:edit_box{
fixed_width=true;
width=0.0;
key="Y_in";
}
spacer;
spacer;
:text{
fixed_width=true;
label="dZ:";
width=0.0;
}
:edit_box{
fixed_width=true;
width=0.0;
key="Z_in";
}
:button{
width=2.0;
label=">";
key="En_XY";
}
}
:row{
height=1;
: list_box { 
fixed_width=true;
key="ZMap"; 
label="Vertical Alignment Map (IN.)"; 
height=11;
width=40;
multiple_select=false;
}
}
:row{
:button{
fixed_width=true;
width=2.0;
label="Remove";
key="RemXY";
}
:button{
fixed_width=true;
width=2.0;
label="Load from File";
key="XYfFi";
}
spacer;
spacer;
spacer;
spacer;
}
:radio_row {
    key="ZMapNearestNeighbor";
    : radio_button {
      key = "NN";
	  label="Nearest Neighbor";
    }
    : radio_button {
		key="iNN";
      label= "Interpolated NNs";
    }
    : radio_button {
	label="Single Plane";
      key = "pln";
    }
  }

:row{
spacer;
}
:row{
spacer;
}
:row{
spacer;
}
:row{
spacer;
}
}
:column{spacer;}
}

: row{
fixed_width=true;
alignment=center;
: cancel_button {
key = "Cancel";
	width = 11;
	fixed_width = true;
	}
: button {
      key = "Load";
      label = "Load Parameters";
      width = 11;
      fixed_width = true;
    }
: button {
      key = "Save";
      label = "&Save Parameters";
      width = 11;
      fixed_width = true;
    }
: button {
      key = "Process";
      is_default = true;
      label = "&Process";
      width = 11;
      fixed_width = true;
    }
}
}
}


}

