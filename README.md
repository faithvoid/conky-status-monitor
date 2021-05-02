# conky-status-monitor
Faithvoid's Status Monitoring Conky Configuration.

I built this so that I could easily check on my system temperatures and CPU/GPU/HDD/network usage, along with displaying whatever I'm streaming in Spotify (using conky-spotify by Madh93). Designed to look elegant and blend in.

![Screenshot_2021-05-02_16-37-14](https://user-images.githubusercontent.com/56975081/116826956-b368c800-ab64-11eb-9a1e-0ab20ab56358.png)

**ISSUES:**
- Due to variances in network interface names, you'll have to use a command like iwconfig to find your network interface ID and replace all instances of wlp0s26u1u2 with your network ID. You can theoretically monitor multiple network interfaces with this, just duplicate the code and change the interface names accordingly.

- The GPU section doesn't work with AMD/Intel cards. I originally designed this script specifically for my use-case scenarios, which has always been systems with Intel CPUs and Nvidia GPUs,  so you'll need to modify the code to get it to work with other GPUs. The CPU code should be universal, though.


**TODO:**
- Remove the (R) and (TM) logos from the CPU script.
- Make the drives section look nicer?
