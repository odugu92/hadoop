import sys

lines = []

with open("/home/codio/.bashrc","r") as old_bashrc:
    for line in old_bashrc:
        if ("JAVA_HOME" in line):
            continue
        if ("HADOOP_PREFIX" in line):
            continue
        lines.append(line)

lines.append("export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64\n")
lines.append("export HADOOP_PREFIX=~/workspace/bigdata/hadoop\n")
lines.append("export PATH=$PATH:$HADOOP_PREFIX/bin\n")

with open("/home/codio/.bashrc","w") as new_bashrc:
    for line in lines:
        new_bashrc.write(line)
