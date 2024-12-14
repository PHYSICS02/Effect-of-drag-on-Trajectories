#include <iostream>
#include <cmath>
#include <fstream>

using namespace std;

// Define constants
const double v0 = 700.0;        // initial velocity (m/s)
const double g = 9.81;         // acceleration due to gravity (m/s^2)
const double dt = 0.1;        // time step (s)
const double tmax = 500;     // maximum time (s)

int main()
{
    // Define angles
    double angles[] = {30, 35, 40, 45, 50, 55, 60};

    // Loop over angles
    for (int i = 0; i < 7; i++) {
        // Convert angle to radians
        double theta = angles[i] * M_PI / 180.0;

        // Initialize variables
        double x = 0.0;
        double y = 0.0;
        double vx = v0 * cos(theta);
        double vy = v0 * sin(theta);
        double t = 0.0;

        // Open output file
        ofstream outfile("trajectory_" + to_string(static_cast<int>(angles[i])) + ".dat");

        // Loop over time
        while (y >= 0.0 && t <= tmax)
        {
            outfile << x << " " << y << endl;

            // New velocity and coordinates
            x += vx * dt;
            y += vy * dt;
            vx = vx;
            vy = vy - g * dt;

            // Update time
            t += dt;
        }
        outfile.close();
    }

    return 0;
}

