Sub ReplaceDefaultStylesWithPreferred()
    '=====================================================================
    ' VBA Script: Replace Default Styles with Preferred Custom Styles
    ' Application: Microsoft Word
    ' Purpose: Forcibly replaces default document styles with user-defined
    '          preferred formatting
    '=====================================================================

    Dim doc As Document
    Dim styleObj As Style

    ' Set the active document
    Set doc = ActiveDocument

    ' Disable screen updating for better performance
    Application.ScreenUpdating = False

    On Error Resume Next ' Continue if a style doesn't exist

    '=====================================================================
    ' NORMAL STYLE (Base style for body text)
    '=====================================================================
    With doc.Styles("Normal")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 11                     ' TODO: Replace with your preferred size
            .Bold = False
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = wdColorAutomatic      ' TODO: Or use RGB(0, 0, 0) for black
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle  ' TODO: Adjust as needed
            .SpaceBefore = 0               ' Points before paragraph
            .SpaceAfter = 8                ' Points after paragraph
            .Alignment = wdAlignParagraphLeft
            .FirstLineIndent = 0           ' No first line indent
        End With
    End With

    '=====================================================================
    ' HEADING 1 STYLE
    '=====================================================================
    With doc.Styles("Heading 1")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 18                     ' TODO: Replace with your preferred size
            .Bold = True
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = RGB(31, 73, 125)      ' TODO: Replace with your preferred color
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 12
            .SpaceAfter = 6
            .Alignment = wdAlignParagraphLeft
            .KeepWithNext = True           ' Keep heading with next paragraph
        End With
    End With

    '=====================================================================
    ' HEADING 2 STYLE
    '=====================================================================
    With doc.Styles("Heading 2")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 14                     ' TODO: Replace with your preferred size
            .Bold = True
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = RGB(31, 73, 125)      ' TODO: Replace with your preferred color
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 10
            .SpaceAfter = 4
            .Alignment = wdAlignParagraphLeft
            .KeepWithNext = True
        End With
    End With

    '=====================================================================
    ' HEADING 3 STYLE
    '=====================================================================
    With doc.Styles("Heading 3")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 12                     ' TODO: Replace with your preferred size
            .Bold = True
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = RGB(31, 73, 125)      ' TODO: Replace with your preferred color
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 8
            .SpaceAfter = 4
            .Alignment = wdAlignParagraphLeft
            .KeepWithNext = True
        End With
    End With

    '=====================================================================
    ' TITLE STYLE
    '=====================================================================
    With doc.Styles("Title")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 26                     ' TODO: Replace with your preferred size
            .Bold = True
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = RGB(31, 73, 125)      ' TODO: Replace with your preferred color
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 0
            .SpaceAfter = 12
            .Alignment = wdAlignParagraphCenter
        End With
    End With

    '=====================================================================
    ' SUBTITLE STYLE
    '=====================================================================
    With doc.Styles("Subtitle")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 12                     ' TODO: Replace with your preferred size
            .Bold = False
            .Italic = True
            .Underline = wdUnderlineNone
            .Color = RGB(128, 128, 128)    ' Gray - TODO: Replace with your preferred color
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 0
            .SpaceAfter = 12
            .Alignment = wdAlignParagraphCenter
        End With
    End With

    '=====================================================================
    ' QUOTE STYLE (Block Quote)
    '=====================================================================
    With doc.Styles("Quote")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 11                     ' TODO: Replace with your preferred size
            .Bold = False
            .Italic = True
            .Underline = wdUnderlineNone
            .Color = RGB(89, 89, 89)       ' Dark gray
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 6
            .SpaceAfter = 6
            .Alignment = wdAlignParagraphLeft
            .LeftIndent = CentimetersToPoints(1)    ' Indent from left
            .RightIndent = CentimetersToPoints(1)   ' Indent from right
        End With
    End With

    '=====================================================================
    ' LIST PARAGRAPH STYLE (for bulleted/numbered lists)
    '=====================================================================
    With doc.Styles("List Paragraph")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 11                     ' TODO: Replace with your preferred size
            .Bold = False
            .Italic = False
            .Underline = wdUnderlineNone
            .Color = wdColorAutomatic
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 0
            .SpaceAfter = 4
            .Alignment = wdAlignParagraphLeft
            .LeftIndent = CentimetersToPoints(1.27)
        End With
    End With

    '=====================================================================
    ' INTENSE QUOTE STYLE (Highlighted quote)
    '=====================================================================
    With doc.Styles("Intense Quote")
        With .Font
            .Name = "Calibri"              ' TODO: Replace with your preferred font
            .Size = 11                     ' TODO: Replace with your preferred size
            .Bold = True
            .Italic = True
            .Underline = wdUnderlineNone
            .Color = RGB(31, 73, 125)
        End With

        With .ParagraphFormat
            .LineSpacingRule = wdLineSpaceSingle
            .SpaceBefore = 12
            .SpaceAfter = 12
            .Alignment = wdAlignParagraphCenter
            .LeftIndent = CentimetersToPoints(1)
            .RightIndent = CentimetersToPoints(1)
        End With

        ' Add border
        With .ParagraphFormat.Borders(wdBorderTop)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth150pt
            .Color = RGB(31, 73, 125)
        End With
        With .ParagraphFormat.Borders(wdBorderBottom)
            .LineStyle = wdLineStyleSingle
            .LineWidth = wdLineWidth150pt
            .Color = RGB(31, 73, 125)
        End With
    End With

    On Error GoTo 0 ' Reset error handling

    ' Re-enable screen updating
    Application.ScreenUpdating = True

    ' Notify user
    MsgBox "Default styles have been replaced with your preferred styles!", vbInformation, "Styles Updated"

End Sub

'=====================================================================
' HELPER FUNCTION: Apply styles to entire document
'=====================================================================
Sub ApplyStylesToDocument()
    '
    ' This macro first replaces the default styles, then optionally
    ' reapplies them to the entire document to refresh formatting
    '

    ' First, replace the default styles
    Call ReplaceDefaultStylesWithPreferred

    ' Optional: Refresh all text to use the updated styles
    ' (Uncomment if you want to force refresh all text)
    '
    ' Dim para As Paragraph
    ' For Each para In ActiveDocument.Paragraphs
    '     ' This will refresh the style formatting
    '     para.Range.Select
    '     Selection.Style = para.Style
    ' Next para

End Sub

'=====================================================================
' HELPER FUNCTION: Create a custom style from scratch
'=====================================================================
Sub CreateCustomStyle(styleName As String, basedOn As String, Optional fontName As String = "Calibri", _
                      Optional fontSize As Integer = 11, Optional isBold As Boolean = False, _
                      Optional isItalic As Boolean = False, Optional fontColor As Long = 0)
    '
    ' Creates a custom style that can be added to the document
    ' Usage: CreateCustomStyle "MyCustomStyle", "Normal", "Arial", 12, True, False, RGB(255,0,0)
    '

    Dim newStyle As Style

    On Error Resume Next
    ' Try to delete the style if it already exists
    ActiveDocument.Styles(styleName).Delete
    On Error GoTo 0

    ' Create the new style
    Set newStyle = ActiveDocument.Styles.Add(Name:=styleName, Type:=wdStyleTypeParagraph)

    With newStyle
        .BaseStyle = basedOn
        .AutomaticallyUpdate = False

        With .Font
            .Name = fontName
            .Size = fontSize
            .Bold = isBold
            .Italic = isItalic
            If fontColor <> 0 Then .Color = fontColor
        End With
    End With

End Sub

'=====================================================================
' BACKUP FUNCTION: Export current styles to a template
'=====================================================================
Sub BackupCurrentStylesToTemplate()
    '
    ' Saves current document styles to a template file for backup
    ' Useful before making changes
    '

    Dim backupPath As String
    backupPath = ActiveDocument.Path & "\StyleBackup_" & Format(Now, "yyyymmdd_hhmmss") & ".dotx"

    ActiveDocument.SaveAs2 FileName:=backupPath, FileFormat:=wdFormatXMLTemplate

    MsgBox "Styles backed up to: " & backupPath, vbInformation, "Backup Complete"

End Sub

'=====================================================================
' UTILITY FUNCTION: List all styles in the document
'=====================================================================
Sub ListAllStyles()
    '
    ' Lists all available styles in the active document
    ' Useful for identifying which styles to modify
    '

    Dim styleObj As Style
    Dim styleList As String
    Dim i As Integer

    styleList = "Available Styles in Document:" & vbCrLf & vbCrLf
    i = 1

    For Each styleObj In ActiveDocument.Styles
        styleList = styleList & i & ". " & styleObj.NameLocal & vbCrLf
        i = i + 1
    Next styleObj

    ' Display in a message box (or you can write to a file)
    MsgBox styleList, vbInformation, "Document Styles"

End Sub
