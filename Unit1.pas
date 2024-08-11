unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, RLBarcode,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBEtiqueta: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    TipoImpressao: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lista: Variant;
  end;

var
  Form1: TForm1;

implementation
Uses Unit2, Unit3;
{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
 begin

  lista := DBEtiqueta.KeyValue;
  if VarIsNull(lista) then
  begin
    ShowMessage('Nenhuma etiqueta selecionada.');
    Exit;
  end;



  if ZConnection1.Connected then
  begin
    with ZQuery1 do
    begin
      SQL.Clear;
      SQL.Add('SELECT *                                             ' +
              'FROM controle_etiqueta ce                            ' +
              'INNER JOIN produto p ON p.pro_codigo = ce.pro_codigo ' +
              '                         WHERE ce.eti_codigo = :cod_lista');
      Params.ParamByName('cod_lista').Value := lista;
      Open;
    end;



    with TipoImpressao do
    begin
      case ItemIndex of




        0:
        begin
          Form2.RLprocodigo.DataField := 'pro_codigo';
          Form2.RLproduto.DataField := 'pro_produto';
          Form2.RLvunit.DataField := 'pro_preco_unitario';
          Form2.RLReport1.Preview();
        end;




        1:
        begin
          Form3.RLprocodigo.DataField := 'pro_codigo';
          Form3.RLproduto.DataField := 'pro_produto';
          Form3.RLvunit.DataField := 'pro_preco_unitario';
          Form3.RLdesc.DataField := 'pro_descricao';
          Form3.RLReport1.Preview();
        end;


      else
        ShowMessage('Selecione um tipo de impressão.');
      end;
    end;
   end
   else
   begin
    ShowMessage('Conexão com o banco de dados não estabelecida.');
   end;
 end;
end.


