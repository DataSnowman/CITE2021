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