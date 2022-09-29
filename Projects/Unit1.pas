{*----------------------------------------------------------------------------
 * Copyright January 2022
 * Name: Elements
 * Author: Tom Disque
 * Purpose: To exercise some of the features of Delphi
 *
 * Notes: I retired in 2019 after 42 years of code development, but found that
 *        I was restless after some months.  I decided I'd like to go back to
 *        coding for a few more years, but realized that my skills were too
 *        out of date.  I needed to learn C#, C++, Java, Python, Perl, and the
 *        parts of the full stack that I didn't already know.
 *
 *        I started with C#, using the excellent book "Learn C# in one Day"
 *        by Jamie Chan.  I knew from past experience with classes in Java
 *        that if I didn't start coding in C# right away, I would forget what
 *        I had learned, so I decided on this project.
 *
 *        Since my bachelor in science degree was a double major in chemistry
 *        and computer science, I wanted a project that would involve both
 *        disciplines.  I also wanted To exercise some of the features unique
 *        to other languages as opposed to C.  This code is the result of that
 *        effort.
 *
 *        The basic idea is the the player choose two elements to see if they
 *        will combine with one another; for example, hydrogen combines with
 *        oxygen to create water.  With later iterations, I will make it more
 *        complicated, such as requiring the player to provide two hydrogen
 *        atoms, one oxygen atom, and a spark of energy to cause the reaction
 *        to take place.
 *
 *        Eventually, if all goes well, I can envision a sequel: Compounds,
 *        which would deal with reactions beyond simple elements, such as
 *        mixing sodium bicarbonate with vinegar to create sodium acetate,
 *        carbon dioxide, and water.
 *
 *        It is my hope that high school students of chemistry and computer
 *        science will  use this code as a starting point to create more
 *        fun ways to learn.  Thus, I give my permission to any and all to
 *        copy and modify this code in any way you wish.  I would love to
 *        see a version of it using the the Unity or Unreal engines.
 *
 *        Converted to Delphi August 2022
 *        Future plans:
 *        1. If I can figure out how to make subscript font, I would like
 *           to output formulas as the results.
 ---------------------------------------------------------------------------*)
}

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdStrings, Vcl.ToolWin, Vcl.ComCtrls;

type
  TElements = class(TForm)

  ElementNames: TListBox;
    Title: TLabel;
    ElementSelected: TRadioGroup;
    Combine: TButton;
    ElementSymbols: TComboBox;
    Quit: TButton;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Results: TMemo;
    Label2: TLabel;
    Instructions: TMemo;
    Oxidation: TMemo;

    procedure FormCreate(Sender: TObject);
    procedure ElementNamesClick(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure ElementSymbolsClick(Sender: TObject);
    procedure CombineClick(Sender: TObject);
  private
    { Private declarations }
  public

// No element has more than 10 oxidation states
Const MAX_OXIDATION_STATES:integer = 10;
      TOTAL_ELEMENTS:integer = 118;
      PeriodicTable:TFilename = 'periodic.csv';
      //  'C:\Users\Public\Documents\periodic.csv';
  end;

{ Why do I get 'undefined' error messages when I use those first 2 constants
  in an array declaration?
  }

type Oxidation = array[0..9] of integer;
type arrayPtr  = array[0..117] of string;

var
  Elements: TElements;
  Number:   array[0..117] of integer;        // Atomic number
  Mass:     array[0..117] of double;         // Atomic number
  OxyVals:  array[0..9, 0..117] of integer;  // Oxidation states
  OxyList:  array[0..117] of string;         // Element list of Oxidation states

  { The selection numbers are always an index to the names, even
    when the selection is made from the combobox.
  }
  ElementSelection:array[0..1] of integer;

  { AlphaSymSeq is sequence numbers that correspond to the alphabetical
    sequence of the element symbols. These help us access the name when we
    only have the symbol.  To get from the symbol to the atomic number we
    have to find the name first, because the atomic numbers were along for
    the ride when the names were sorted.
  }
  AlphaSymSeq:array[0..117] of Integer = (
1  , 97 , 2  , 3  , 5  , 6  , 7  , 40 , 13 , 8  , 10 , 12 , 11 , 9  , 14 , 18 ,
16 , 15 , 19 , 17 , 21 , 26 , 24 , 23 , 22 , 20 , 25 , 28 , 27 , 29 , 31 , 30 ,
32 , 35 , 49 , 34 , 33 , 36 , 38 , 37 , 39 , 45 , 43 , 41 , 61 , 44 , 42 , 47 ,
46 , 48 , 80 , 50 , 51 , 54 , 52 , 56 , 55 , 63 , 60 , 57 , 58 , 62 , 59 , 70 ,
98 , 69 , 64 , 65 , 68 , 67 , 71 , 66 , 74 , 72 , 73 , 76 , 83 , 53 , 75 , 82 ,
79 , 81 , 77 , 78 , 84 , 89 , 86 , 91 , 88 , 87 , 85 , 90 , 100, 4  , 93 , 95 ,
94 , 96 , 92 , 109, 99 , 101, 105, 102, 103, 107, 110, 106, 108, 104, 112, 113,
111, 114, 116, 115, 117, 118 );

  { AlphaNameSeq is sequence numbers that correspond to the alphabetical
    sequence of the element names. These help us access the symbol when we
    only have the name.
  }

  AlphaNameSeq:array[0..117] of Integer = (
1  , 3  , 4  , 94 , 5  , 6  , 7  , 10 , 14 , 11 , 13 , 12 , 9  , 15 , 18 , 17 ,
20 , 16 , 19 , 26 , 21 , 25 , 24 , 23 , 27 , 22 , 29 , 28 , 30 , 32 , 31 , 33 ,
37 , 36 , 34 , 38 , 40 , 39 , 41 , 8  , 44 , 47 , 43 , 46 , 42 , 49 , 48 , 50 ,
35 , 52 , 53 , 55 , 78 , 54 , 57 , 56 , 60 , 61 , 63 , 59 , 45 , 62 , 58 , 67 ,
68 , 72 , 70 , 69 , 66 , 64 , 71 , 74 , 75 , 73 , 79 , 76 , 83 , 84 , 81 , 51 ,
82 , 80 , 77 , 85 , 91 , 87 , 90 , 89 , 86 , 92 , 88 , 99 , 95 , 97 , 96 , 98 ,
2  , 65 , 101, 93 , 102, 104, 105, 110, 103, 108, 106, 109, 100, 107, 113, 111,
112, 114, 116, 115, 117, 118 );

  { I chose to use arrays of indices to connect names with symbols instead
    of pointers because it was very easy to create the arrays.  Here's how:
    1. Download a periodic table to a spreadsheet; it will be sorted by
       atomic number.
    2. Copy the column of atomic numbers (1 to 118) to a safe place.
    3. Sort the table by name and paste the copied column at the end.
    4. Sort the table by symbol. The AlphaSymSeq array is now the column
       pasted from step 3.
    5. Paste the column from the copy buffer at the end again.
    6. Sort the table by name again.  The AlphaNameSeq array is now the
       column pasted from step 5.
  }

  columns:TstringList;
  nobles:array[0..6] of Integer = (2, 10, 18, 36, 54, 86, 118);

implementation

{$R *.dfm}

procedure TElements.FormCreate(Sender: TObject);
begin
  var wholeRow:string;
  var csvFile:TextFile;
  var i, j:integer;

  // I need to replace '\' with a system call to return tbe file separator
  AssignFile(csvFile, GetCurrentDir + '\' + PeriodicTable);
  reset(csvFile);
  columns := TStringList.Create;

  i := 0;
  while (not eof(csvFile)) do begin
    // Read a whole row
    readln(csvFile, wholeRow);

    // Separate the row into its constituent columns:
    // Atomic number, Symbol, Name, Atomic Weight, and ten oxidation
    // states, from most negative to most positive.
    ExtractStrings([','], [], PChar(wholeRow), columns);

    Number[i] := columns.Strings[0].ToInteger;

    // Symbols and Names are already set in the Listbox and combobox
    // ElementSymbols.Items[i] := columns.Strings[1];
    // ElementNames.Items[i]   := columns.Strings[2];

    Mass[i] := columns.Strings[3].ToDouble;
    OxyList[i] := '';

    for j := 4 to 13 do begin
      OxyVals[j-4, i] := columns.Strings[j].ToInteger;
      if columns.Strings[j] <> '0' then
         OxyList[i] := OxyList[i] + columns.Strings[j] + ' ';
      end;

    i := i + 1;
    columns.Clear;
    end;

  // Ten lines for results, two lines for oxidation states
  Results.Lines.Clear;
  Results.Lines.Strings[0] := 'Results';

  for i  := 1 to 10 do
    Results.Lines.Add(' ');

  Oxidation.Lines.Clear;
  Oxidation.Lines.Add('Oxidation States');
  Oxidation.Lines.Add(' ');
  Oxidation.Lines.Add(' ');

  columns.Free;
  closefile(csvFile);

  end;

procedure TElements.ElementNamesClick(Sender: TObject);
begin
  var i:integer := ElementSelected.ItemIndex; // -1, 0, or 1
  var j:integer := ElementNames.ItemIndex;
  var k:integer;

  // If j = -1, someone clicked in dead space
  if (j > -1) then

    case i of

      // Index = -1 if we clicked on the listbox without first selecting the radiobox
      -1: ShowMessage('First, select element 1 or element 2');

       // Save the selected element name and index
       0..1: begin
          ElementSelection[i] := j;
          ElementSelected.items[i] := ElementNames.Items.Strings[j];
          Oxidation.Lines.Strings[i+1] :=  OxyList[j];

          if (ElementSelected.items[0] = ElementSelected.items[1]) then
             ShowMessage('You have selected the same element twice');

          for k := 0 to length(nobles) do
            if (Number[j] = nobles[k]) then begin
              ShowMessage(ElementSelected.items[i] + ' is a noble gas');
              break;
            end;
          end;

       else ShowMessage('Unknown element button'); // Should never happenn
       end;
  end;

procedure TElements.ElementSymbolsClick(Sender: TObject);
begin
  var i:integer := ElementSelected.ItemIndex; // -1, 0, or 1
  var j:integer := AlphaSymSeq[ElementSymbols.ItemIndex] - 1;
  var k:integer;

  // j now points to the name corresponding to the selected symbol
  // If j = -1, someone clicked in dead space
  if (j > -1) then

    case i of

      // Index = -1 if we clicked on the listbox without first selecting the radiobox
      -1: ShowMessage('First, select element 1 or element 2');

       // Save the selected element name and index
       0..1: begin
          ElementSelection[i] := j;
          ElementSelected.items[i] := ElementNames.Items.Strings[j];
          Oxidation.Lines.Strings[i+1] :=  OxyList[j];

          for k := 0 to length(nobles) do
            if (Number[j] = nobles[k]) then begin
              ShowMessage(ElementSelected.items[i] + ' is a noble gas');
              break;
            end;

          end;

       else ShowMessage('Unknown element button'); // Should never happenn
     end;

end;

// Exit button.  Time to quit!
procedure TElements.QuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

// I found this least common multiple example at rosettacode.org
function lcm(a, b:Integer): Integer;
begin
  result := a;
  while (result mod b) <> 0 do
    inc(result, a);
end;

// Combine button.  Time to the elements together.
procedure TElements.CombineClick(Sender: TObject);
begin
  // Make some variable assigments to simplify the references
  var E1:Integer := ElementSelection[0];
  var E2:Integer := ElementSelection[1];
  var i:Integer;
  var j:Integer;
  var value1:Integer;
  var value2:Integer;
  var LCMval:Integer;
  var ratio1:integer;
  var ratio2:Integer;
  var Combinations:Integer := 0;

  // Get names and symbols for the two selected elements
  var Name1:string :=   ElementNames.Items.Strings[E1];
  var Name2:string :=   ElementNames.Items.Strings[E2];
  var Symbol1:string := ElementSymbols.Items.Strings[AlphaNameSeq[E1] - 1];
  var Symbol2:string := ElementSymbols.Items.Strings[AlphaNameSeq[E2] - 1];

  Results.Lines.Strings[0] := 'Results:';

  { ***Debugging code***
   Results.Lines.Strings[1] := E1.ToString + ':';
   for i := 0 to 9 do begin
     Results.Lines.Strings[1] := Results.Lines.Strings[1] + ' ' +
       OxyVals[i, E1].ToString + ',';
   end;

   Results.Lines.Strings[2] := E2.ToString + ':';
   for i := 0 to 9 do begin
     Results.Lines.Strings[2] := Results.Lines.Strings[2] + ' ' +
       OxyVals[i, E2].ToString + ',';
   end;
   }
  { Here's where we use the oxidation states to determine how the elements
  will combine.  We use a least common multiple function to do this.
  }
  for i := 0 to 9 do begin

    value1 := OxyVals[i, E1];
    if (value1 = 0) then break;

    for j := 0 to 9 do begin

      value2 := OxyVals[j, E2];

      { If we hit a zero, it's either a noble gas (elements 2, 10, 18, 36, 54, 86,
        or 118) or we have run out of oxidation states for one of the elements.
      }
      if (value2 = 0) then break;

      // One must be positive and the other must be negative
      if ( ( (value1 < 0) and (value2 < 0) ) or
           ( (value1 > 0) and (value2 > 0) ) )
                  then continue;
         // No message; elements may have other oxidation states that will work

         { *-------------------------------------------------------------
           * Determine how many of element 1 we need to combine with
           * element 2.
           *-------------------------------------------------------------
         }

         LCMval := lcm(value1, value2);
         ratio1 := abs(LCMval Div value1);
         ratio2 := abs(LCMval Div value2);

         {------------------------------------------------------------
          * It is very likely that we will come up with combinations that
          * would never happen in real life.  I hope to eventually add
          * properties to the elements that will help weed out the
          * bogus combinations.
          *-----------------------------------------------------------
         }
         Results.Lines.Strings[Combinations+1] :=
           ratio1.ToString + ' ' + name1 + '(' + value1.ToString +
           ') will combine with ' +
           ratio2.ToString + ' ' + name2 + '(' + value2.ToString + ')';

         inc(Combinations);

     end;
  end;

  { Debugging statements
  Results.Lines.Strings[1] := 'We are combining ' + Name1 + ' with ' +
    Name2;

  Results.Lines.Strings[2] := '(Element ' + ElementSelection[0].ToString +
     ' with ' + ElementSelection[1].ToString + ')';

  Results.Lines.Strings[3] := 'We are combining ' + Symbol1 +
     ' with ' + Symbol2;

  Results.Lines.Strings[4] := '(Element ' +
    AlphaNameSeq[ElementSelection[0]].ToString +
    ' with ' + AlphaNameSeq[ElementSelection[1]].ToString + ')';
   }

end;

end.
