unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RLReport, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm2 = class(TForm)
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLPanel2: TRLPanel;
    RLproduto: TRLDBText;
    RLprocodigo: TRLDBText;
    RLvunit: TRLDBText;
    Panel1: TPanel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
Uses Unit1;
{$R *.dfm}

end.
