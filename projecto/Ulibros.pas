unit Ulibros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TLibreria = class(TForm)
    Panel1: TPanel;
    btninsertar: TButton;
    btnactualizar: TButton;
    btneliminar: TButton;
    btncerrar: TButton;
    DBGrid1: TDBGrid;
    Query: TFDQuery;
    DataSource1: TDataSource;
    edtbuscar: TEdit;
    btnbuscar: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btninsertarClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure btnbuscarClick(Sender: TObject);
  private
    { Private declarations }
    procedure mostrar;
    procedure refrescargrid;
    procedure eliminar;
  public
    { Public declarations }
  end;

var
  Libreria: TLibreria;

implementation

{$R *.dfm}

uses Umodulo, Ucurd;

{ TLibreria }

procedure TLibreria.btnactualizarClick(Sender: TObject);
begin
  crud.Caption := 'Actualizar Datos';
  crud.Hint := DBGrid1.Fields[0].Text;
  crud.ShowModal;
  refrescargrid;
end;

procedure TLibreria.btnbuscarClick(Sender: TObject);
begin
  refrescargrid;
end;

procedure TLibreria.btncerrarClick(Sender: TObject);
begin
  close;
end;

procedure TLibreria.btneliminarClick(Sender: TObject);
begin
  crud.Caption := 'Eliminar Datos';
  crud.Hint := DBGrid1.Fields[0].Text;
  crud.ShowModal;
  refrescargrid;

end;

procedure TLibreria.btninsertarClick(Sender: TObject);
begin
  crud.Caption := 'Insertar Datos';
  crud.ShowModal;
  refrescargrid;

end;

procedure TLibreria.eliminar;
begin
  if MessageDlg('Esta seguro de querer borrar este archivo', mtconfirmation,
    [mbyes, mbno], 0) = mryes then
  begin
    with Query do
    begin
      active := false;
      sql.Clear;
      sql.Add('Delete from libros Where id=' + DBGrid1.Fields[0].Text);

      ExecSQL;

    end;
    MessageDlg('Archivo eliminado exitosamente', mtconfirmation, [mbok], 0);
    refrescargrid;

  end;

end;

procedure TLibreria.FormShow(Sender: TObject);
begin
  // mostrar;
  refrescargrid;

end;

procedure TLibreria.mostrar;
begin
  with Query do
  begin
    active := false;
    sql.Clear;
    sql.Text := 'Select * from libros';
    active := true;

  end;
end;

procedure TLibreria.refrescargrid;
begin
  with Query do
  begin
    active := false;
    sql.Clear;
    sql.Text := 'select * from libros where titulo LIKE' +
      quotedstr('%' + edtbuscar.Text + '%');
    active := true;
  end;
end;

end.
