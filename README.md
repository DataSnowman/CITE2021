# CITE2021

## Get -> Transform -> Model -> Report

## Get

### Use Power BI deskop to Get Enrollment Files

1. Download the following files using your browser:

    [Download 2020–21 Enrollment](https://lakehouseworkshop.blob.core.windows.net/datasets/CaliforniaDOE/CensusDayEnrollmentbySchool/enr20.txt)

    [Download 2019–20 Enrollment](https://lakehouseworkshop.blob.core.windows.net/datasets/CaliforniaDOE/CensusDayEnrollmentbySchool/enr19.txt)

    Right click, select Save As, and save to Desktop or other location.

    Chrome

    ![Chrome](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/chromeSaveAs.png)

    Edge

    ![Edge](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/edgeSaveAs.png)

    To look at the structure of the files refer to the file structure

    * [File Structure-School-Level Enrollment](https://github.com/DataSnowman/CITE2021/blob/main/datasets/School-LevelEnrollment.md)

2. Import the file into Power BI Desktop

    * Open Power BI and click on Get data>Text/CSV

         ![GetData](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/getData.png)

    * Click on enr20.txt and click Open

        ![openText](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/openText.png)

    * Power BI should determine that the file is Tab Delimited

        ![tabDelimited](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/tabDelimited.png)

## Transform

### Use Power BI deskop to Transform Enrollment Files

3. Transform the datatypes of columns in the file

    * Click on Transform Data

    * The first 6 columns should be of type Text.  Click on the CDS_CODE and ETHNIC columns and change the type to Text

        ![textColumns](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/textColumns.png)

    * The remaining colums should all be Whole Numbers

        ![wholeNumberColumns](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/wholeNumberColumns.png)

    * Check that the numbers are Whole numbers (Integers) and click Close & Apply

        ![closeAndApply](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/closeAndApply.png)

4. Review the Data and Model tabs

    * Click on the Data tab to see the data returned into Power BI

        ![dataTab](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/dataTab.png)

    * Click on the Model tab to see the table created by the import

        ![modelTab](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/modelTab.png)

5. Transform the data by creating a new dataset with breakdown by Elementary School (K through 4), Middle School (5 through 8), and High School (9 through 12)

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

        ```
        [KDGN]+[GR_1]+[GR_2]+[GR_3]+[GR_4]
        ```

        ![customElementary](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/customElementary.png)

    * Click OK

    * Make sure the data type for the new Elementary column is set to Whole Number

        ![wholeNumberElem](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/wholeNumberElem.png)

    * Select Custom Column and create two more columns:

        A) Middle School
        
        New column name: `Middle`

        Custom column formula:

        ```
        [GR_5]+[GR_6]+[GR_7]+[GR_8]
        ```


        B) High School
        
        New column name: `High`

        Custom column formula:

        ```
        [GR_9]+[GR_10]+[GR_11]+[GR_12]
        ```

    * Make sure the data type for the new Middle and High columns are set to Whole Number

    * Remove the ADULT Column

        ![removeAdult](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/removeAdult.png)

    * Remove all the Grade Columns.  Select KDGN and hold down the shift key and then select UNGR_SEC.  This will select all the columns between and including KDGN and UNGR_SEC

        ![kdgn](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/kdgn.png)

        ![ungrsec](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/ungrsec.png)


    * Right click on the yellow bar and select Remove Columns

        ![removeColumns](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/removeColumns.png)

    * The remaining Columns should be: CDS_CODE", "COUNTY", "DISTRICT", "SCHOOL", "ETHNIC", "GENDER", "ENR_TOTAL", "Elementary", "Middle", "High"

    * Click Close & Apply.  This is what it looks like in the Data tab

        ![dataTabSchoolType](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/dataTabSchoolType.png)

6. Add in the descriptions for Ethnic Codes

    * Click on the Transform data button on the Model or Report tab and select Transform data

        ![transformData](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/transformData.png)

    * Click on the schoolType query and select the ETHNIC column and right click and choose Add Column From Examples

        ![columnFromExample](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/columnFromExample.png)

    * Look for the [Racial/ethnic designation](https://github.com/DataSnowman/CITE2021/blob/main/datasets/School-LevelEnrollment.md)

    * Copy and paste the descriptions to the codes and click OK
    
        ![ethnicDesignation](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/ethnicDesignation.png)


    * Name the Custom Columnn "EthnicDesignation"

    * Click Close & Apply 


## Model

### Use Power BI deskop to Join County info

After you clicked on Close & Apply go to the Model tab.  You should have 2 tables that look like this.  Representing the two queries in the Transform Data


        ![twoTables](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/twoTables.png)

Lets go get some more data on the California Counties from the web to add to the model

7. Get Data from Wikipedia

    * Click on Get data>Web

         ![getWeb](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/getWeb.png)

    * Cut and Paste the following URL (Stay with default `basic`) and click OK

    ```
    https://en.wikipedia.org/wiki/List_of_counties_in_California
    ```

        ![basicWeb](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/basicWeb.png)



    * Click on Anonymous and click on `Connect`

        ![connect](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/connect.png)


    * Click on Table 2 and then Click `Transform Data`

        ![table2](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/table2.png)

    * Rename the Table 2 query to `County` and remove the `Changed Type` Applied Step (`{"FIPS code[5]", Int64.Type},` changed it to Integer but it should be text because it has leading zeros)

        ![fips](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/fips.png)

    * Select the County column, right click and select Duplicate Column

        ![dup](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/dup.png)

    * Rename the new column `CountyJoin` and right click and delect Split Column > By Delimiter

        ![byDelimiter](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/byDelimiter.png)

    * Go with `Space` and Each occurence of the delimiter and click OK 

        ![space](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/space.png)

    * Notice that you got a bad split for the two word county names

        ![badSplit](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/badSplit.png)
    
    * Delete the last to steps of the Applied Steps (Change Type and Split Column By Delimiter)

    From 

        ![delSteps1](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/delSteps1.png)

    To

        ![delSteps2](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/delSteps2.png)

    * Lets use Replace Values instead

        ![replaceValues](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/replaceValues.png)

    * Enter a space followed by County in the Value to Find box and leave the Replace with box empty.  Click OK

        ![replaceCounty](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/replaceCounty.png)

    * Couple last transformations.  Change the type of Population column to Whole Number and remove the Map column

    * Click Close & Apply

    * Go to the Model tab and drag CountyJoin in the County table on to COUNTY in the schoolType table to create a many to 1 join

        ![twoTableModel](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/twoTableModel.png)

    * You can also create and edit the join in Manage relationships

        ![manageRel](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/manageRel.png)

    * Hide the the enr20 table by clicking eye icon in the top right corner of the table

        ![hide](https://raw.githubusercontent.com/DataSnowman/CITE2021/main/images/hide.png)

    * You are now ready to create some reports and visualizations

## Report

### Use Power BI deskop to create a report

    


        

    

