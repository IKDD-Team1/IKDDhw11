data = load '$input' using PigStorage('"');
chunks = foreach data generate FLATTEN($3) as word;
cgroup = group chunks by word;
counting = foreach cgroup generate COUNT(chunks) as numbers, group;

sorted_result = order counting by numbers desc;
top100_result = limit sorted_result 100;
store top100_result into '$output';
