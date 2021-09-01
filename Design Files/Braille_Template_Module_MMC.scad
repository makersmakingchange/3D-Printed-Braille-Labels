/*
Braille Module
http://creativecommons.org/licenses/by/3.0/
*/


// mm sizes from http://dots.physics.orst.edu/gs_layout.html
radius = 0.25;
spacing = 2.5;
distance = 3.75 + spacing;

plate_height = 10;
plate_thickness = 2;

$fn = 7;



module letter(bitmap) {
	row_size = 2;
	col_size = 3;
	bitmap_size = row_size * col_size;
	
	function loc_x(loc) = floor(loc / row_size) * spacing + spacing;
	function loc_y(loc) = loc % row_size * spacing  + (distance-spacing)/2;

	for (loc = [0:bitmap_size - 1]) {
		if (bitmap[loc] != 0) {
			union() {
				translate(v = [loc_x(loc), loc_y(loc), 0]) {
					sphere(radius = radius* bitmap[loc], center = true);
				}
			}
		}
	}
}


module braille_char(char) {
	if (char == "A") {
		letter([
			1,0,
			0,0,
			0,0
		]);
	} else if (char == "B") {
		letter([
			1,0,
			1,0,
			0,0
		]);
	} else if (char == "C") {
		letter([
			1,1,
			0,0,
			0,0
		]);
	} else if (char == "D") {
		letter([
			1,1,
			0,1,
			0,0
		]);
	} else if (char == "E") {
		letter([
			1,0,
			0,1,
			0,0
		]);
	} else if (char == "F") {
		letter([
			1,1,
			1,0,
			0,0
		]);
	} else if (char == "G") {
		letter([
			1,1,
			1,1,
			0,0
		]);
	} else if (char == "H") {
		letter([
			1,0,
			1,1,
			0,0
		]);
	} else if (char == "I") {
		letter([
			0,1,
			1,0,
			0,0
		]);
	} else if (char == "J") {
		letter([
			0,1,
			1,1,
			0,0
		]);
	} else if (char == "K") {
		letter([
			1,0,
			0,0,
			1,0
		]);
	} else if (char == "L") {
		letter([
			1,0,
			1,0,
			1,0
		]);
	} else if (char == "M") {
		letter([
			1,1,
			0,0,
			1,0
		]);
	} else if (char == "N") {
		letter([
			1,1,
			0,1,
			1,0
		]);
	} else if (char == "O") {
		letter([
			1,0,
			0,1,
			1,0
		]);
	} else if (char == "P") {
		letter([
			1,1,
			1,0,
			1,0
		]);
	} else if (char == "Q") {
		letter([
			1,1,
			1,1,
			1,0
		]);
	} else if (char == "R") {
		letter([
			1,0,
			1,1,
			1,0
		]);
	} else if (char == "S") {
		letter([
			0,1,
			1,0,
			1,0
		]);
	} else if (char == "T") {
		letter([
			0,1,
			1,1,
			1,0
		]);
	} else if (char == "U") {
		letter([
			1,0,
			0,0,
			1,1
		]);
	} else if (char == "V") {
		letter([
			1,0,
			1,0,
			1,1
		]);
	} else if (char == "W") {
		letter([
			0,1,
			1,1,
			0,1
		]);
	} else if (char == "X") {
		letter([
			1,1,
			0,0,
			1,1
		]);
	} else if (char == "Y") {
		letter([
			1,1,
			0,1,
			1,1
		]);
	} else if (char == "Z") {
		letter([
			1,0,
			0,1,
			1,1
		]);
	} else if (char == "CH") {
		letter([
			1,0,
			0,0,
			0,1
		]);
	} else if (char == "SH") {
		letter([
			1,1,
			0,0,
			0,1
		]);
	} else if (char == "TH") {
		letter([
			1,1,
			0,1,
			0,1
		]);
	} else if (char == "WH") {
		letter([
			1,0,
			0,1,
			0,1
		]);
	} else if (char == "OU") {
		letter([
			1,0,
			1,1,
			0,1
		]);
	} else if (char == "ST") {
		letter([
			0,1,
			0,0,
			1,0
		]);
	} else if (char == "AND") {
		letter([
			1,1,
			1,0,
			1,1
		]);
	} else if (char == "FOR") {
		letter([
			1,1,
			1,1,
			1,1
		]);
	} else if (char == "OF") {
		letter([
			1,0,
			1,1,
			1,1
		]);
	} else if (char == "THE") {
		letter([
			0,1,
			1,0,
			1,1
		]);
	} else if (char == "WITH") {
		letter([
			0,1,
			1,1,
			1,1
		]);
	} else if (char == "IN") {
		letter([
			0,0,
			0,1,
			1,0
		]);
	} else if (char == "EN") {
		letter([
			0,0,
			1,0,
			0,1
		]);
	} else if (char == "CON") {
		letter([
			0,0,
			1,1,
			0,0
		]);
	} else if (char == "DIS") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "COM") {
		letter([
			0,0,
			0,0,
			1,1
		]);
	} else if (char == "BE") {
		letter([
			0,0,
			1,0,
			1,0
		]);
	} else if (char == "EA") {
		letter([
			0,0,
			1,0,
			0,0
		]);
	} else if (char == "BB") {
		letter([
			0,0,
			1,0,
			1,0
		]);
	} else if (char == "CC") {
		letter([
			0,0,
			1,1,
			0,0
		]);
	} else if (char == "DD") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "FF") {
		letter([
			0,0,
			1,1,
			1,0
		]);
	} else if (char == "GG") {
		letter([
			0,0,
			1,1,
			1,1
		]);
	} else if (char == "AR") {
		letter([
			0,1,
			0,1,
			1,0
		]);
	} else if (char == "BLE") {
		letter([
			0,1,
			0,1,
			1,1
		]);
	} else if (char == "ED") {
		letter([
			1,1,
			1,0,
			0,1
		]);
	} else if (char == "ER") {
		letter([
			1,1,
			1,1,
			0,1
		]);
	} else if (char == "GH") {
		letter([
			1,0,
			1,0,
			0,1
		]);
	} else if (char == "ING") {
		letter([
			0,1,
			0,0,
			1,1
		]);
	} else if (char == "OW") {
		letter([
			0,1,
			1,0,
			0,1
		]);
	} else if (char == "cap") {
		letter([
			0,0,
			0,0,
			0,1
		]);
	} else if (char == "#") {
		letter([
			0,1,
			0,1,
			1,1
		]);
	} else if (char == ".") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "?") {
		letter([
			0,0,
			1,0,
			1,1
		]);
	} else if (char == "!") {
		letter([
			0,0,
			1,1,
			1,0
		]);
	} else if (char == "-") {
		letter([
			0,0,
			0,0,
			1,1
		]);
	} else if (char == "quote") {
		letter([
			0,0,
			0,1,
			1,1
		]);
	} else if (char == "1") {
		letter([
			1,0,
			0,0,
			0,0
		]);
	} else if (char == "2") {
		letter([
			1,0,
			1,0,
			0,0
		]);
	} else if (char == "3") {
		letter([
			1,1,
			0,0,
			0,0
		]);
	} else if (char == "4") {
		letter([
			1,1,
			0,1,
			0,0
		]);
	} else if (char == "5") {
		letter([
			1,0,
			0,1,
			0,0
		]);
	} else if (char == "6") {
		letter([
			1,1,
			1,0,
			0,0
		]);
	} else if (char == "7") {
		letter([
			1,1,
			1,1,
			0,0
		]);
	} else if (char == "8") {
		letter([
			1,0,
			1,1,
			0,0
		]);
	} else if (char == "9") {
		letter([
			0,1,
			1,0,
			0,0
		]);
	} else if (char == "0") {
		letter([
			0,1,
			1,1,
			0,0
		]);
        } else if (char == "dot4") {
		letter([
			0,1,
			0,0,
			0,0
		]);
        } else if (char == "dot5") {
		letter([
			0,0,
			0,1,
			0,0
		]);
        } else if (char == "dot45") {
		letter([
			0,1,
			0,1,
			0,0
		]);
         } else if (char == "dot456") {
		letter([
			0,1,
			0,1,
			0,1
		]);
        } else if (char == "dot56") {
		letter([
			0,0,
			0,1,
			0,1 
		]);
        } else if (char == "dot46") {
		letter([
			0,1,
			0,0,
			0,1 
		]);
        } else if (char == "n.") {
		letter([
			0,1,
			0,0,
			0,1 
		]);
        } else if (char == "grade1") {
		letter([
			0,0,
			0,1,
			0,1 
		]);
        } else if (char == "n1") {
		letter([
			0,0,
			1,0,
			0,0
		]);
	} else if (char == "n2") {
		letter([
			0,0,
			1,0,
			1,0
		]);
	} else if (char == "n3") {
		letter([
			0,0,
			1,1,
			0,0
		]);
	} else if (char == "n4") {
		letter([
			0,0,
			1,1,
			0,1
		]);
	} else if (char == "n5") {
		letter([
			0,0,
			1,0,
			0,1
		]);
	} else if (char == "n6") {
		letter([
			0,0,
			1,1,
			1,0
		]);
	} else if (char == "n7") {
		letter([
			0,0,
			1,1,
			1,1
		]);
	} else if (char == "n8") {
		letter([
			0,0,
			1,0,
			1,1
		]);
	} else if (char == "n9") {
		letter([
			0,0,
			0,1,
			1,0
		]);
	} else if (char == "n0") {
		letter([
			0,0,
			0,1,
			1,1
        ]);
    } else if (char == "+") {
		letter([
			0,1,
			0,0,
			1,1 
		]);
        
        } else if (char == "-") {
		letter([
			0,0,
			0,0,
			1,1 
		]);
            //for the next four characters (*1,*2,/1,/2) this stands for two two parts that need to be included for multiplication and divison. So if you want a multiplication symbol for examply you would input this: chars = ["*1","*2"]; since multplication and division needs two cells.
char_count = 2;
        } else if (char == "*1") {
		letter([
			0,1,
			0,0,
			0,0 
		]);
        } else if (char == "*2") {
		letter([
			1,0,
			0,0,
			0,1 
		]);
        } else if (char == "/1") {
		letter([
			0,1,
			0,0,
			0,1
		]);
         } else if (char == "/2") {
		letter([
			0,1,
			0,0,
			1,0
		]);
	} else {
		echo("Invalid Character: ", char);
	}

}

module braille_str(chars, char_count) {
	echo(str("Total Width: ", distance * char_count, "mm"));
	union() {
		for (count = [0:char_count-1]) {
			translate(v = [0, count * distance, plate_thickness]) {
				braille_char(chars[count]);
			}
		}
		translate(v = [0, -distance/2, 0]) {
			color([0,0,1]) {
				cube(size = [plate_height, distance * (char_count+1), plate_thickness]);
			}
		}
	}
}






chars = 
["T","E","S","T"];
char_count = 4;

union()
{
	rotate([0,90,0]) braille_str(chars, char_count);
	// uncomment next line to have a small "foot" added for better adhesion to the print platform or raft
	//translate([-19,20,-plate_height]) cube(size = [20,5,2]);
}