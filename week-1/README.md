<div dir="rtl", style = "padding-left:20%; padding-right:20%">

سوف نقوم في هذا الاسبوع بتغطية بيانات التنسوف نقوم في هذا الاسبوع بتغطية بيانات التنقل
[Mobility data](https://www.blog.google/technology/health/covid-19-community-mobility-reports?hl=en)
 في المملكة العربية السعودية خلال الفترة مابين
15/02/2019
و
19/07/2019
لجميع مناطق المملكة

تم جمع هذة البيانات عن طريق
Google
حيث قامو بجمع معلومات عن تنقل السكان في السعودية
وماهي الأماكن التي يذهبون إليها.

تم تقسيم هذة الاماكن الى سبعة اصناف

1- Retail Recreation


2- Grocery or Pharmcy


3- Parks


5- Transit Stations


6- Workplace


7- Residential


يمكنك تحميل التقرير بصيغة 
pdf
من
[هنا](https://www.google.com/covid19/mobility/)


لتحميل البيانات

</div>

```r
# اذا لم تقوم بتنصيب اي من هذة المكتابات أزل علامة # ثم قم باستخدام الكود

#install.packages("remotes")
#remotes::install_github("joachim-gassen/tidycovid19")
#install.packages("tidyverse")


library(tidycovid19)
library(tidyverse)

sa_mov<-download_google_cmr_data(type = "country_region") %>%
  filter(iso3c == "SAU") %>% 
  select(-iso3c, iso_3166_2_code, census_fips_code, timestamp )
  
```