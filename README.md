# Bgp At Doors of Autonomous Systems is Simple (BADASS)

### **Roadmap for the Project**

### **1. Understand the Prerequisites**

- Familiarize yourself with the following concepts:
    - **GNS3**: A network simulation tool.
    - **Docker**: Containerization platform.
    - **BGP (RFC 4271)** and **MP-BGP (RFC 4760)**: Routing protocols.
    - **VXLAN (RFC 7348)**: Overlay network technology for Layer 2 connectivity over Layer 3.
    - **EVPN (RFC 7432)**: BGP extension for Ethernet VPN.

### **2. Prepare Your Environment**

- Use a **virtual machine** to set up the project environment.
- Install and configure the following:
    - **GNS3**: Create and manage network topologies.
    - **Docker**: Build and run containers.

### **3. Tackle Each Part**

**Part 1: GNS3 Configuration with Docker**

- Create two Docker images:
    - **Image 1**: Include `busybox` or a similar tool (e.g., `alpine` Linux).
    - **Image 2**: Include:
        - A routing software (`zebra` or `quagga`).
        - Active services for `BGPD`, `OSPF`, and `IS-IS`.
- Integrate these images into GNS3 and validate connectivity between nodes.
- Save configurations in a folder named `P1`.

**Part 2: Discovering a VXLAN**

- Configure a VXLAN with:
    - **VXLAN ID**: Use `10` as specified.
    - **Static mode**: Establish connectivity manually.
    - **Dynamic multicast**: Leverage group communication (e.g., `239.1.1.1`).
- Set up a bridge (`br0`) and inspect traffic to validate the MAC address table.
- Save configurations in a folder named `P2`.

**Part 3: Discovering BGP with EVPN**

- Extend the VXLAN setup to use **BGP EVPN** for MAC address learning and advertisement.
- Implement:
    - **Route Reflection (RR)** for leaf nodes.
    - **Dynamic VTEP relations**.
- Validate the setup with pings and observe routing behaviors (e.g., type 2 and 3 routes).
- Save configurations in a folder named `P3`.

### **4. Submission**

- Structure your repository as follows:
    
    ```
    /P1
    /P2
    /P3
    ```
    
- Include all configuration files and comments explaining your setup.
- Export the project as a ZIP file with all base images.

---

### **Key Concepts to Study**

- **VXLAN:**
    - Understand how it encapsulates Layer 2 frames within Layer 3.
    - Static vs. dynamic multicast configurations.
- **BGP and EVPN:**
    - How BGP EVPN advertises MAC and IP addresses.
    - Role of Route Reflectors.
- **Docker Networking:**
    - Linking containers within GNS3.
- **GNS3 Usage:**
    - Importing Docker images.
    - Designing and testing network topologies.
