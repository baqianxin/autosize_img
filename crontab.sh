# 凌晨2点执行，查找目录下面7天内没有被访问的文件并删除，释放空间
# +7代表大于等于8天前的档名： find /var -mtime +7
# -7代表小于等于7天内的文件档名：find /var -mtime -7
# 7则是代表7-8那一天的文件档名： find /var -mtime 7
0 2 * * * find /tmp/thumb -atime 7 | xargs rm -rf
