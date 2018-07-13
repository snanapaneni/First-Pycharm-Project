*** Settings ***

Documentation  Defines all required resources and keywords
Library     OperatingSystem
Library     Selenium2Library
Resource    ../Xpaths/PeoplePageXpath.robot


*** Keywords ***

Navigate to People page from Home Page

    wait until element is visible   //*[@id="form"]/div[4]/header/div[4]/div/div/div/nav/ul/li[1]/a
    click element    //*[@id="form"]/div[4]/header/div[4]/div/div/div/nav/ul/li[1]/a
    wait until element is visible   //*[@id="content"]/section[1]/div/div/div/h1
    click element   //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl02_GWLG_Search_Filters_Location_filterList"]/li[2]/label/span
    wait until element is visible   //*[@id="filterSort"]   20
    page should contain element     //*[@id="filterSort"]
    page should contain element     //*[@id="searchResults"]/ul[1]/li[1]/article/div/div
    ${scott}=   get text    //*[@id="searchResults"]/ul[1]/li[2]/article/div/div/p[1]/a/strong
    log to console   ${scott}
    Should Be Equal As Strings  ${scott}    Neil S. Abbott
