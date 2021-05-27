wget -O ${buildername}_favourite_picture.jpg ${picture_name}
git clone https://github.com/akeenz/emr-hive-dataset.git
#zip both downlaoded files
zip ${buildername}_artifact.zip ${buildername}_favourite_picture.jpg emr-hive-dataset/dataset/sale.sql
ls 