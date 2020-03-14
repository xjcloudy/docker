#!/bin/bash
license="AAABMA0ODAoPeJxtkFFrwjAQx9/zKQJ7jrR14ioEVpuMiU2rRgfbW+zOGYipJG2Z337Rzpexx7v73 4/f3cOL01goh5MUx9PZJJpNpjiXW5xEcYoY+Nrpc6sbS/PGHkwHtgZUdqc9uOqw8+A8JTHKHahri KkW6HWTRGOSpCjstKpuS3UCegRjGlQHyii0dA+0dR3cI1wobai2vfZ6b+DZ12BhZA3ivTLdDU4Py ngYCIUOcw/byxlu8LwSgm/yRVagALItWBVE+fdZu8sgNR5PSZyQZDIA7ifkpvMtuLL5BE8jJHlJ3 6sdFtmSY8FxhmXG8CorWTZClftSVvtBRpdvWup5wfGWZwJJcD24BaPzJ7kmcSoLIjbrR8JeP5bo1 zZMiwW7V//LrTpXH5WHP5/8AUkBiNMwLAIUai0BFyMjQaJ3VwiOpKS6zRnrKr4CFHoWxgr3d20l7 fY8optqx9ro5fnAX02f7"
sid="B8SQ-19SL-MRQ4-DHZK"
if [ ! -e $PWD/confluence.cfg.xml ];then
   echo "can not find confluence.cfg.xml in "$PWD
   exit 1
fi
sed -i "s/\(server\.id\">\).*/\1$sid<\/property>/" confluence.cfg.xml
sed -i "s/\(license\.message\">\).*/\1$license<\/property>/" confluence.cfg.xml
