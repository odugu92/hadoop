cd ~/local/hadoop
hadoop jar hadoop-*streaming*.jar \
   -files /home/codio/local/hadoop/mapper.py \
   -files /home/codio/local/hadoop/reducer.py \
   -mapper /home/codio/local/hadoop/mapper.py \
   -reducer /home/codio/local/hadoop/reducer.py \
   -input /user/hduser/gutenberg/* \
   -output /user/hduser/gutenberg-output-4

