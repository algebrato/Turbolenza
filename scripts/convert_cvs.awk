#!/usr/bin/awk -f

##
##Parser inline for sonic data reduction. Covert the raw style data in CSV format.  
##Usege: ./convert_cvs.awk inputfilename.dat > outputfilename.dat
##

BEGIN{	
	print "x,y,z,t";
	a=0;
}

{
	if(a%2){
		print $6/100.","$3/100.","$9/100.","$12/100.
	}else{
	}
	a+=1;
}
END{

}



