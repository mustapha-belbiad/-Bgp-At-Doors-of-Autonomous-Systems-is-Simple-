# Use the FRRouting image as the base for the container, providing routing protocol support.
FROM frrouting/frr

# Enable the BGP, OSPF and ISIS daemons by modifying the FRR configuration file.
RUN sed -i -e 's/^bgpd=no/bgpd=yes/' -e 's/^ospfd=no/ospfd=yes/' \
    -e 's/^isisd=no/isisd=yes/' /etc/frr/daemons

