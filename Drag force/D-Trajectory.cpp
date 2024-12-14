#include <iostream>
#include <cmath>
#include<fstream>
using namespace std;
// value of constants
double v0 = 700.0;        // initial velocity (m/s) and given
const double g = 9.81;         // gravity
double D = 4e-5;        // drag force (m^-1)
const double dt = 0.01;        // time step (s)
const double tmax = 100.0;     // maximum time (s) choicely

// Define functions
double f(double x, double y) 
              { 
               return -D*sqrt(x*x + y*y);
                }

// Main function
int main()
{
   
    double Angle[]= { 30, 35, 40, 45, 50, 55, 60};
    
    for(int i=0; i<7; i++)
    {
    
    double theta = Angle[i] *M_PI/180.0;
    double x = 0.0;
    double y = 0.0;
    double vx = v0*cos(theta);
    double vy = v0*sin(theta);
    double t = 0.0;
    
    ofstream outfile("Dtrajectory("+ to_string(static_cast<int>(Angle[i])) +").dat");
    // Loop on time till tuching ground
    while (y >= 0.0 && t <= tmax)
    {
        // Print x and y coordinates to output file
        outfile << x << " " << y << endl;
        // Update velocities and coordinates
        double vx_new = vx + f(vx, vy)*vx*dt;
        double vy_new = vy - g*dt + f(vx, vy)*vy*dt;
        x += vx*dt;
        y += vy*dt;
        // Update time and velocities
        t += dt;
        vx = vx_new;
        vy = vy_new;
    }
    // Close output file
    outfile.close(); 
    }
    return 0;
}
