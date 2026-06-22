```mermaid
graph TD

Internet

Internet --> IGW

IGW --> PublicSubnetA
IGW --> PublicSubnetB

PublicSubnetA --> NAT
PublicSubnetB --> NAT

NAT --> PrivateSubnetA
NAT --> PrivateSubnetB
```
