My partition steps

1) Run the copy_s3_from_professor_to_local.ipynb to simulate the process of download data by API. 

    1.1) The copy_s3_from_professor_to_local.ipynb will splite all data by RETURN_TYPE (990, 990EO, 990EZ, 990O, 990PF).

    1.2) Create s3 bucket as followed:
          return_type=990/	
          return_type=990EO/
          return_type=990EZ/	
          return_type=990O/
          return_type=990PF/
          
    1.3) The copy_s3_from_professor_to_local.ipynb will upload 5 csv files into different s3 path (see above)

2) Run SQL partion_script.sql
    2.1) It will create a table as a partitional col named return_type


Reference：

https://www.youtube.com/watch?v=RcFFOyYEWKc

https://www.youtube.com/watch?v=fhtYCGRNKn8
