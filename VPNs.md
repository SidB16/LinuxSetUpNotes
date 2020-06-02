# VPNs?

## Internet/IP Deficiences
1. Initially, the internet (aka arpanet) was small and relatively private.
2. In private neworks, you dont need to build security into the protocol- you need to build it into the building.
3. Today, a mass of untrusted devices are connected to the internet.
4. Futhermore, routers are owned and administered by 'who knows who'.
5. Thus 'who knows who' stand between you and your others devices.
6. Back then only end-host attacks were possible, now attacks can happen from anywhere.

## Security CIA and IP
1. IP indirectly violates Integrity and Authenticity in the CIAAAA triad. 
2. IP protocol provides no assurance of: 
* data authenticity- IP addr can be spoofed. 
* data confidentiality- cleartext by default can be read by intermediate routers and links.
* data intregrity- theoretically, a adversary router could change both IP packet payload and checksum.
3. Different method that have evolved over the years to addres lack of security in IP protocol:
* Application Layer: Pretty Good Privacy (PGP) is used to encrypt email messages; but cannot protect TCP/IP header and any other application.
* Transport Layer: TLS protects confendiality, data intregrity and user authenticity; BUT cannot protect IP(header) data nor application running on top of UDP.
* Network Layer: IPsec provides proectection for any higher level protocol or application without the need for additional security method. IPsec can protect:
* Confidentiality- by encrypting data
* Integrity- by hashing data checksum
* User Authenticity- through use of signatures and ceritifcates.
