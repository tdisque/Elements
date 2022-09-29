object Elements: TElements
  Left = 0
  Top = 0
  Caption = 'Elemental Combinations'
  ClientHeight = 592
  ClientWidth = 760
  Color = clHotLight
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Franklin Gothic Medium'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Title: TLabel
    Left = 0
    Top = 29
    Width = 760
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Elemental Combinations'
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -24
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ExplicitWidth = 274
  end
  object Label2: TLabel
    Left = 376
    Top = 312
    Width = 52
    Height = 21
    Caption = 'Label2'
  end
  object ElementNames: TListBox
    Left = 24
    Top = 72
    Width = 129
    Height = 257
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ItemHeight = 22
    Items.Strings = (
      'Actinium'
      'Aluminum'
      'Americium'
      'Antimony'
      'Argon'
      'Arsenic'
      'Astatine'
      'Barium'
      'Berkelium'
      'Beryllium'
      'Bismuth'
      'Bohrium'
      'Boron'
      'Bromine'
      'Cadmium'
      'Calcium'
      'Californium'
      'Carbon'
      'Cerium'
      'Cesium'
      'Chlorine'
      'Chromium'
      'Cobalt'
      'Copernicium'
      'Copper'
      'Curium'
      'Darmstadtium'
      'Dubnium'
      'Dysprosium'
      'Einsteinium'
      'Erbium'
      'Europium'
      'Fermium'
      'Flerovium'
      'Fluorine'
      'Francium'
      'Gadolinium'
      'Gallium'
      'Germanium'
      'Gold'
      'Hafnium'
      'Hassium'
      'Helium'
      'Holmium'
      'Hydrogen'
      'Indium'
      'Iodine'
      'Iridium'
      'Iron'
      'Krypton'
      'Lanthanum'
      'Lawrencium'
      'Lead'
      'Lithium'
      'Livermorium'
      'Lutetium'
      'Magnesium'
      'Manganese'
      'Meitnerium'
      'Mendelevium'
      'Mercury'
      'Molybdenum'
      'Moscovium'
      'Neodymium'
      'Neon'
      'Neptunium'
      'Nickel'
      'Nihonium'
      'Niobium'
      'Nitrogen'
      'Nobelium'
      'Oganesson'
      'Osmium'
      'Oxygen'
      'Palladium'
      'Phosphorus'
      'Platinum'
      'Plutonium'
      'Polonium'
      'Potassium'
      'Praseodymium'
      'Promethium'
      'Protactinium'
      'Radium'
      'Radon'
      'Rhenium'
      'Rhodium'
      'Roentgenium'
      'Rubidium'
      'Ruthenium'
      'Rutherfordium'
      'Samarium'
      'Scandium'
      'Seaborgium'
      'Selenium'
      'Silicon'
      'Silver'
      'Sodium'
      'Strontium'
      'Sulfur'
      'Tantalum'
      'Technetium'
      'Tellurium'
      'Tennessine'
      'Terbium'
      'Thallium'
      'Thorium'
      'Thulium'
      'Tin'
      'Titanium'
      'Tungsten'
      'Uranium'
      'Vanadium'
      'Xenon'
      'Ytterbium'
      'Yttrium'
      'Zinc'
      'Zirconium')
    ParentFont = False
    TabOrder = 0
    OnClick = ElementNamesClick
  end
  object ElementSymbols: TComboBox
    Left = 24
    Top = 344
    Width = 129
    Height = 30
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    Text = 'ElementSymbols'
    OnClick = ElementSymbolsClick
    Items.Strings = (
      'Ac'
      'Ag'
      'Al'
      'Am'
      'Ar'
      'As'
      'At'
      'Au'
      'B'
      'Ba'
      'Be'
      'Bh'
      'Bi'
      'Bk'
      'Br'
      'C'
      'Ca'
      'Cd'
      'Ce'
      'Cf'
      'Cl'
      'Cm'
      'Cn'
      'Co'
      'Cr'
      'Cs'
      'Cu'
      'Db'
      'Ds'
      'Dy'
      'Er'
      'Es'
      'Eu'
      'F'
      'Fe'
      'Fl'
      'Fm'
      'Fr'
      'Ga'
      'Gd'
      'Ge'
      'H'
      'He'
      'Hf'
      'Hg'
      'Ho'
      'Hs'
      'I'
      'In'
      'Ir'
      'K'
      'Kr'
      'La'
      'Li'
      'Lr'
      'Lu'
      'Lv'
      'Mc'
      'Md'
      'Mg'
      'Mn'
      'Mo'
      'Mt'
      'N'
      'Na'
      'Nb'
      'Nd'
      'Ne'
      'Nh'
      'Ni'
      'No'
      'Np'
      'O'
      'Og'
      'Os'
      'P'
      'Pa'
      'Pb'
      'Pd'
      'Pm'
      'Po'
      'Pr'
      'Pt'
      'Pu'
      'Ra'
      'Rb'
      'Re'
      'Rf'
      'Rg'
      'Rh'
      'Rn'
      'Ru'
      'S'
      'Sb'
      'Sc'
      'Se'
      'Sg'
      'Si'
      'Sm'
      'Sn'
      'Sr'
      'Ta'
      'Tb'
      'Tc'
      'Te'
      'Th'
      'Ti'
      'Tl'
      'Tm'
      'Ts'
      'U'
      'V'
      'W'
      'Xe'
      'Y'
      'Yb'
      'Zn'
      'Zr')
  end
  object ElementSelected: TRadioGroup
    Left = 24
    Top = 512
    Width = 129
    Height = 70
    Caption = 'Select Element'
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold, fsItalic]
    Items.Strings = (
      'Element1'
      'Element2')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object Combine: TButton
    Left = 207
    Top = 344
    Width = 90
    Height = 30
    Cursor = crHandPoint
    Caption = 'Combine'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = CombineClick
  end
  object Quit: TButton
    Left = 207
    Top = 395
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Quit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = QuitClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 588
    Width = 760
    Height = 4
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 760
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 6
  end
  object Results: TMemo
    Left = 318
    Top = 344
    Width = 423
    Height = 238
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Results:')
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Instructions: TMemo
    Left = 200
    Top = 72
    Width = 541
    Height = 257
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Instructions'
      ''
      'To select the first element, click on the Element1 button and '
      'choose the full name of your element from the list to the left,'
      'or choose the atomic symbol from the pulldown menu below.'
      ''
      'To select the second element, click on the Element2 button and '
      'repeat the steps from above.'
      ''
      'Next, press the Combine button and view your compounds in the '
      'Results box.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Oxidation: TMemo
    Left = 159
    Top = 512
    Width = 153
    Height = 70
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium'
    Font.Style = [fsBold, fsItalic]
    Lines.Strings = (
      'Oxidation')
    ParentFont = False
    TabOrder = 9
  end
end
