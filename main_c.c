/************************************************************************/
/** Program that receives data from PC via bluetooth in the following  **/
/** format: X1 Y1 orientation X2 Y2. According to these data moves the **/
/** robot to the end point(X2,Y2) from the actual point (X1,Y1)        **/
/************************************************************************/

#include "p30f6014A.h"
#include "e_epuck_ports.h"
#include "e_init_port.h"
#include "e_led.h"
#include "e_uart_char.h"
#include "e_motors.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define DELAY2 5000000 // ~90 deg
#define PI acos(-1) // PI

// Variable declaration
char buffer[100], ending[100];
char caracter[1000];
int i;
float data[5];
char *end;
long timer, integer;
float position_x1=0, position_y1=0, angle1=0;
float position_x2=0, position_y2=0;
//long double angle_rad = 0;
//long double angle_deg = 0;
int angle1_int = 0, angle2_int = 0,orientation = 0;
/*Function declaration*/
int rad2deg(float posx1,float posy1,float posx2, float posy2);

int main() {

	//system initialization 
	e_init_port();    			// configure port pins
	e_init_uart1();				// initialize UART to 115200 Kbaud
        e_led_clear();
	e_set_body_led(0);
	e_set_front_led(0);

	while (1) {

                // Uncomment next lines for debugging
                sprintf(buffer, "Waiting for characters...\n",strlen(buffer));
                e_send_uart1_char(buffer, strlen(buffer));
                while(e_uart1_sending());

                if(e_ischar_uart1()){
                    sprintf(buffer, "\n",strlen(buffer));
                    do{
                        e_getchar_uart1(buffer);
                        // Uncomment next lines for debugging
                        //e_send_uart1_char(buffer,strlen(buffer));   //Echo
                        //while(e_uart1_sending());
                        strcat(caracter,buffer);    // Concatenating buffer chars in caracter
                    }while(e_ischar_uart1() != 0);

                    // Resetting Buffer
                    sprintf(buffer, "\n",strlen(buffer));
                    // Uncomment next lines for debugging
                    //e_send_uart1_char(buffer, strlen(buffer));
                    //while(e_uart1_sending());

                    // Separating
                    for(i=0;i<5;i++){
                        data[i] = strtod(caracter, &end);  // string to int
                        sprintf(caracter, "%s", end);          // Save end in caracter
                    }

                    // Resetting caracter
                    sprintf(caracter, "\t",strlen(caracter));
                    // Uncomment next lines for debugging
                    //e_send_uart1_char(caracter, strlen(caracter));
                    //while(e_uart1_sending());

                    // Uncomment next lines for debugging
                    
                    for(i=0;i<5;i++){
                        sprintf(caracter, "%f",data[i]);
                        e_send_uart1_char(caracter, strlen(caracter));
                        while(e_uart1_sending());
                        sprintf(caracter, "\n",strlen(caracter));
                        e_send_uart1_char(caracter, strlen(caracter));
                        while(e_uart1_sending());
                    }
                    

                    // Saving data into variables
                    position_x1 = data[0];
                    position_y1 = data[1];
                    angle1 = data[2];
                    position_x2 = data[3];
                    position_y2 = data[4];

                    // Getting angles
                    angle2_int = rad2deg(position_x1,position_y1,position_x2,position_y2);
                    angle1_int = (int)angle1;

                    
                    // Choosing orientation according to the difference between angles
                    if (angle2_int > angle1_int) {
                        if ((angle2_int - angle1_int) > 180) orientation = 1;   //Clockwise
                        else orientation = 2;   //Counterclockwise
                    }
                    if (angle2_int < angle1_int){
                        if ((angle1_int - angle2_int) > 180) orientation = 2;   //Counterclockwise
                        else orientation = 1;   //Clockwise
                    }
                    if (abs(angle1_int - angle2_int) < 3) orientation = 0;

                    // Checking initial position values
                    if ((position_x2 != 0.) && (position_y2 != 0.)){
                        // Checking orientation
                        if (orientation == 2){
                            e_set_speed_left(-50);
                            e_set_speed_right(50);
                            for(timer=0;timer<(DELAY2/180);timer++);    // Delay
                        } else if (orientation == 1){
                            e_set_speed_left(50);
                            e_set_speed_right(-50);
                            for(timer=0;timer<(DELAY2/180);timer++);    // Delay
                        } else{
                            e_set_speed_left(0);
                            e_set_speed_right(0);
                        }

                        // If the angles are coincident
                        if (orientation == 0){
                            // Checking if position error is more than 10 units
                            if ((abs(position_x1 - position_x2) > 10.) && (abs(position_y1 - position_y2) > 10.)){
                                e_set_speed_left(100);
                                e_set_speed_right(100);
                                for(timer=0;timer<(DELAY2/4);timer++);    // Delay
                            }else{
                                // Stopping motors
                                e_set_speed_left(0);
                                e_set_speed_right(0);
                            }
                        }
                    }else{
                        // Stopping motors
                         e_set_speed_left(0);
                         e_set_speed_right(0);
                    }
                    
                }
   
	}
}


// Function that given 2 (X,Y) coordinate pairs, calculates
// the angle between them and returns it in degrees.

int rad2deg(float posx1,float posy1,float posx2, float posy2){
    //Local variable declaration
    long double rads = 0, deg_double = 0;
    long double y = posy2 - posy1;
    long double x = posx2 - posx1;
    int deg;

    // Special cases (division by 0)
    if ((x == 0)&&(posy1 < posy2)){
        rads = PI / 2; // Special case 1: 90 degrees
    }
    else if((x == 0)&&(posy1 > posy2)){
        rads = -PI / 2; // Special case 2: 270 degrees
    }
    else{
        rads = atan2l(y,x); // Default case
    }

    // Angle conversion
    deg_double = rads / ((2*PI) / 360.0);
    
    // Adding if negative to have 0-360
    if (posy1 > posy2){
        deg_double += 360;
    }
    deg = (int)deg_double;

    return deg;
}