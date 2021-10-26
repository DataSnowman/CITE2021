# CITE2021

## Power BI Desktop Transformation of Enrollment Files

1) Download the following files using your browser:

    [Download 2020–21 Enrollment](https://lakehouseworkshop.blob.core.windows.net/datasets/CaliforniaDOE/CensusDayEnrollmentbySchool/enr20.txt)

    [Download 2019–20 Enrollment](https://lakehouseworkshop.blob.core.windows.net/datasets/CaliforniaDOE/CensusDayEnrollmentbySchool/enr19.txt)

    Right click, select Save As, and save to Desktop or other location.

    Chrome

    ![Chrome](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/chromeSaveAs.png)

    Edge

    ![Edge](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/edgeSaveAs.png)

    To look at the structure of the files refer to the file structure

    * [File Structure-School-Level Enrollment](https://github.com/DataSnowman/CITE2021/blob/main/datasets/School-LevelEnrollment.md)

2) Import the file into Power BI Desktop

    * Open Power BI and click on Get data>Text/CSV

         ![GetData](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/getData.png)

    * Click on enr20.txt and click Open

        ![openText](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/openText.png)

    * Power BI should determine that the file is Tab Delimited

        ![tabDelimited](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/tabDelimited.png)

    * Click on Transform Data

    * The first 6 columns should be of type Text.  Click on the CDS_CODE and ETHNIC columns and change the type to Text

        ![textColumns](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/textColumns.png)

    * The remaining colums should all be Whole Numbers

        ![wholeNumberColumns](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/wholeNumberColumns.png)

    * Check that the numbers are Whole numbers (Integers) and click Close & Apply

        ![closeAndApply](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/closeAndApply.png)

    * Click on the Data tab to see the data returned into Power BI

        ![dataTab](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/dataTab.png)

    * Click on the Model tab to see the table created by the import

        ![modelTab](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/modelTab.png)

3) Create a new dataset with breakdown by Elementary School (K through 4), Middle School (5 through 8), and High School (9 through 12)

    * Click on the Transform data button on the Model or Report tab and select Transform data

        ![transformData](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/transformData.png)

    * Right click on the enr20 query and select Duplicate

        ![duplicate](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/duplicate.png)

    * Right click on the enr20 (2) query and select Rename to change its name to schoolType

         ![rename](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/rename.png)

        ![schoolType](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/schoolType.png)

    * With schoolType highlighted select Add Column

        ![addColumn](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/addColumn.png)

    * Select Custom Column and enter

        New column name: `Elementary`

        Custom column formula:

        ```[KDGN]+[GR_1]+[GR_2]+[GR_3]+[GR_4]```

        ![customElementary](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/customElementary.png)

    * Click OK

    * Make sure the data type for the new Elementary column is set to Whole Number

        ![wholeNumberElem](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/wholeNumberElem.png)

    * Select Custom Column and create two more columns:

        A) Middle School
        
        New column name: `Middle`

        Custom column formula:

        ```[GR_5]+[GR_6]+[GR_7]+[GR_8]```


        B) High School
        
        New column name: `High`

        Custom column formula:

        ```[GR_9]+[GR_10]+[GR_11]+[GR_12]```

    * Make sure the data type for the new Middle and High columns are set to Whole Number



