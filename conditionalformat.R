
library(openxlsx)


wb <- createWorkbook()

addWorksheet(wb, "mysheet")
writeData(wb , sheet = "mysheet", dson)

negStyle <- createStyle(fontColour = "#9C0006", bgFill = "#FFC7CE")
conditionalFormatting(wb, "mysheet",
                      cols = 6,
                      rows = 1:nrow(dson), 
                      type = "contains", 
                      rule = "Aired", style = negStyle
)

saveWorkbook(wb, "conditionalFormattingExample.xlsx", TRUE)