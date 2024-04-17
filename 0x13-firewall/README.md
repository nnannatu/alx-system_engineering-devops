# Firewall Setup README

## Background Context

In this project, we are tasked with configuring a firewall to secure our servers. The absence of a firewall can leave our systems vulnerable to various security threats. By implementing firewall rules, we can control the incoming and outgoing network traffic, thereby enhancing the security posture of our infrastructure.

## Resources

### What is a Firewall?

A firewall is a network security device that monitors and filters incoming and outgoing network traffic based on predetermined security rules. It acts as a barrier between a trusted internal network and untrusted external networks, such as the internet.

### Using Telnet for Checking Open Sockets

Telnet is a useful tool for checking if sockets are open between two endpoints. By using the `telnet` command followed by the IP address and port number, we can attempt to establish a connection. For example:



If the connection is successful, we will see a message indicating the successful connection. Otherwise, the connection attempt will fail.

### School Network Restrictions

It's important to note that the school network filters outgoing connections using a network-based firewall. Therefore, certain ports on servers outside of the school network may not be accessible. To test our firewall configuration, we should perform tests from outside of the school network, such as from our web-02 server.

## Instructions

1. **Be Cautious with Firewall Rules**: Firewall rules should be configured with care to avoid unintended consequences. For example, denying access to port 22/TCP without appropriate precautions can result in being locked out of the server.

2. **Testing Firewall Configuration**: Use telnet or other appropriate tools to test the accessibility of ports after applying firewall rules. Ensure that required ports are accessible while unnecessary ports are blocked.

3. **Unblocking Port 22**: If port 22/TCP is blocked by default (e.g., when using UFW), ensure to unblock it immediately to prevent loss of SSH access to the server.

## CSV File

```csv
0x13. Firewall,DevOps,SysAdmin,Security,1,Ongoing second chance project - started Apr 15, 2024 6:00 AM,must end by Apr 18, 2024 6:00 AM,An auto review will be launched at the deadline,0.0/7 mandatory & 0.0/2 optional,0.0%,0.0%,0.0%,0.0% + (0.0% * 0.0%)
