<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body style="font-family:Arial">
                <h style="font-size:24pt; font-weight:bold; color:red; background-color:yellow">
                    Employee Information
                </h>
                              
                <p style="font-size:12pt">           
                  <xsl:for-each select="myElement/Employee">                       
                    <xsl:variable name="empID" select="empId"/>
                    <xsl:variable name="divID" select="../WorksFor[empId=$empID]/divId"></xsl:variable>
                    <xsl:variable name="managerEmpID" select="../Division[managerEmpId=$empID]/managerEmpId"></xsl:variable>
                    <xsl:variable name="percentTime" select="../WorksFor[empId=$empID]/percentTime"></xsl:variable>
                    <xsl:variable name="maxTimeDiv" select="../WorksFor[percentTime=max($percentTime) and empId=$empID]/divId"></xsl:variable>
                      
                      Emloyee <b><xsl:value-of select="empName"/></b> works from <b><xsl:value-of select="empOffice"/></b> office.
                      <b><xsl:value-of select="empName"/></b> works for <b><xsl:value-of select="count($divID)"/></b>
                    division(s)
                    <xsl:if test="count($divID)!=0 ">
                       , which are                  
                        <b><xsl:for-each select="../Division[divId=$divID]">                        
                        <xsl:choose>
                            <xsl:when test="position() &lt;count($divID)">
                                 <xsl:value-of select="divName"/>,
                            </xsl:when> 
                            <xsl:otherwise>
                                <xsl:if test="count($divID)!=1">
                                and 
                                </xsl:if>
                                    <xsl:value-of select="divName"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        </xsl:for-each>   </b> 
                    </xsl:if>.
                                            
                      <b><xsl:value-of select="empName"/></b> manages <b><xsl:value-of select="count($managerEmpID)"/></b> division(s)                    
                      <xsl:if test="count($managerEmpID)!=0">
                        , which are 
                          <b><xsl:for-each select="../Division[managerEmpId=$managerEmpID]">                        
                          <xsl:choose>
                              <xsl:when test="position() &lt;count($managerEmpID)">
                                    <xsl:value-of select="divName"/>,
                              </xsl:when>                           
                              <xsl:otherwise>                                  
                                  <xsl:if test="count($managerEmpID)!=1">
                                      and 
                                  </xsl:if>                                  
                                   <xsl:value-of select="divName"/>
                              </xsl:otherwise>
                          </xsl:choose>
                      </xsl:for-each> </b>
                      </xsl:if>.
                                            
                      <b><xsl:value-of select="empName"/></b> works for the most time with the 
                      <b><xsl:value-of select="../Division[divId=$maxTimeDiv]/divName"/></b> division. 
                      <br/>
                      <br/>
                    </xsl:for-each>            
                </p>
      
                <h style="font-size:24pt; font-weight:bold; color:red; background-color:lightgreen">
                    Department information
                </h>
                <p style="font-size:12pt">   
                        <xsl:for-each select="myElement/Department">
                        <xsl:variable name="deptID" select="deptId"></xsl:variable>
                        <xsl:variable name="divID" select="../Division[housedDeptId=$deptID]/divId"></xsl:variable>
                            Department <b><xsl:value-of select="deptName"/></b> houses <b><xsl:value-of select="count($divID)"/></b> division(s)                       
                        <xsl:if test="count($divID)!=0">
                        :
                            <b> <xsl:for-each select="../Division[divId=$divID]">
                            <xsl:choose>
                                <xsl:when test="position() &lt; count($divID)">
                                    <xsl:value-of select="divName"/>, 
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test="count($divID)!=1">
                                        and 
                                    </xsl:if> 
                                    <xsl:value-of select="divName"/>
                                </xsl:otherwise>                           
                            </xsl:choose>                         
                        </xsl:for-each> </b>
                        </xsl:if>.  
                            <br/>
                            <br/>
                    </xsl:for-each>                   
                </p>               
            </body>
        </html>        
    </xsl:template>    
   </xsl:stylesheet>