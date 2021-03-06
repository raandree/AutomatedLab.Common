---
external help file: AutomatedLab.Common-Help.xml
Module Name: AutomatedLab.Common
online version:
schema: 2.0.0
---

# Sync-Parameter

## SYNOPSIS

Synchronise cmdlet parameters with a hashtable

## SYNTAX

```
Sync-Parameter [-Command] <Object> [[-Parameters] <Hashtable>] [-ConvertValue] [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

### Example 1
```powershell
PS C:\> $parma = Sync-Parameter -Command (Get-Command New-Item) -Parameters $PSBoundParameters
PS C:\> New-Item @parma
```

Grabs all valid parameters for New-Item from the PSBoundParameters collection in order to splat
them to New-Item

### Example 2
```powershell
PS C:\> $parma = Sync-Parameter -Command (Get-Command New-Item) -Parameters $PSBoundParameters -ConvertValue
PS C:\> New-Item @parma
```

Grabs all valid parameters for New-Item from the PSBoundParameters collection in order to splat
them to New-Item, converting the parameter values as well

## PARAMETERS

### -Command
The CommandInfo or FunctionInfo object

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
The parameter hashtable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConvertValue
Indicates that the parameter values should be converted if possible. Throws
an error if not possible.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
