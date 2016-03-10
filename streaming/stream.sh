hadoop jar $HADOOP_PREFIX/hadoop*streaming*jar \
  -input /hdfs/codio/data/text \
  -output /hdfs/codio/results/output_xx \
  -mapper /home/codio/workspace/streaming/mapper.py \
  -reducer /home/codio/workspace/streaming/reducer.py
