Feature: ABSA Technical  Assessment

  Scenario Outline: post a payload then validate response
    * def DateTimeFormatterObject = Java.type('com.absa.utils.DateTimeFormatter')
    * def dateTimeFormatter = new DateTimeFormatterObject()

    * def CreDtTmVal = dateTimeFormatter.getDateInYYYY_MM_DDTHH_mm_ss()
    * def ReqdColltnDtVal = dateTimeFormatter.getDateInYYYY_MM_DD_Format()

    * xml payload = read('classpath:com/absa/payload/payload.xml')

    Given url 'https://verifye.co.za'
    And path  '/response.php'
    And request payload
    When method post
    Then status 200

    * print 'Returned Responds ', response

     Then match karate.xmlPath(response,'/Document/CstmrDrctDbtInitn/GrpHdr/MsgId') == '<MsgIdVal>'



     Examples:
     |MsgIdVal                              |NbOfTxsVal |CtrlSumVal  |InitgPtyNmVal|PmtInfIdVal |PmtMtdVal|CdtrNmVal|PhneNbVal     |EmailAdrVal           |IdVal     |ClrSysMmbIdMmbIdVal|EndToEndIdVal | SvcLvlPrtry |
     |021/DDINP/Puleng/20211118/2971        |3          |12142835832 |puleng       |PULENG2005  |DD       |Jensen   |+27-0636825482|tester.1233@obta.co.za|123456788 |632005             |11680410171886| AC          |


  