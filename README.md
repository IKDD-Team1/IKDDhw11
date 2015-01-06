Homework 11 Pig
==========

## Requirement

+ DBLP Dataset : http://projects.csail.mit.edu/dnd/DBLP/dblp.json.gz
+ 每一行包含作品、作者與年分
+ 用Pig找出資料庫中最多作品的Top 100個人

+ 繳交Pig code、UDF function、答案與作業說明

## Run

    pig input=dblp.json output=answer -x local IKDDhw11.pig

