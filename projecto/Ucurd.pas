unit Ucurd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCrud = class(TForm)
    lbid: TLabel;
    edtid: TEdit;
    lbtitulo: TLabel;
    edttitulo: TEdit;
    lbautor: TLabel;
    edtautor: TEdit;
    lbprecio: TLabel;
    edtprecio: TEdit;
    btninsertar: TButton;
    btnactualizar: TButton;
    btncerrar: TButton;
    btneliminar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btninsertarClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpiar_insercion;
    procedure insertar;
    procedure actualizar;
    procedure eliminar;
  public
    { Public declarations }
  end;

var
  Crud: TCrud;

implementation

{$R *.dfm}

uses Ulibros, Umodulo;

procedure TCrud.actualizar;
begin
  Libreria.Query.SQL.Text := 'Update libros set titulo=' +
    quotedstr(edttitulo.Text) + ',autor = ' + quotedstr(edtautor.Text) +
    ',precio = ' + quotedstr(edtprecio.Text) + 'WHERE Id=' +
    quotedstr(edtid.Text);
  Libreria.Query.ExecSQL;
  showmessage('Campo Actualizado');
  close;
end;

procedure TCrud.btnactualizarClick(Sender: TObject);
begin
  actualizar;
end;

procedure TCrud.btncerrarClick(Sender: TObject);
begin
  close;
end;

procedure TCrud.btneliminarClick(Sender: TObject);
begin
  eliminar;
end;

procedure TCrud.btninsertarClick(Sender: TObject);
begin
  insertar;
end;

procedure TCrud.eliminar;
begin
  Libreria.Query.SQL.Text := 'DELETE from libros WHERE Id=' +
    quotedstr(edtid.Text);
  Libreria.Query.ExecSQL;
  close;
end;

procedure TCrud.FormShow(Sender: TObject);
begin
  if self.Caption = 'Insertar datos' then
  begin
    edtid.Clear;
    edttitulo.Clear;
    edtautor.Clear;
    edtprecio.Clear;
  end

  else if (self.Caption = 'Actualizar Datos') then
  begin
    with Libreria.Query do
    begin
      active := false;
      SQL.Clear;
      SQL.Text := 'select * from libros where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := Libreria.Query.FieldByName('Id').AsString;
    edttitulo.Text := Libreria.Query.FieldByName('titulo').AsString;
    edtautor.Text := Libreria.Query.FieldByName('autor').AsString;
    edtprecio.Text := Libreria.Query.FieldByName('precio').AsString;
  end
  else if (self.Caption = 'Eliminar Datos') then
  begin
    with Libreria.Query do
    begin
      active := false;
      SQL.Clear;
      SQL.Text := 'select * from libros where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := Libreria.Query.FieldByName('Id').AsString;

  end;

end;

procedure TCrud.insertar;
begin

  if (edttitulo.Text <> '') and (edtautor.Text <> '') and (edtprecio.Text <> '')
  then
  begin
    with Libreria.Query do
    begin
      active := false;
      SQL.Clear;
      SQL.Text := 'insert into libros (titulo,autor,precio)' + 'values(' +
        quotedstr(edttitulo.Text) + ',' + quotedstr(edtautor.Text) + ',' +
        quotedstr(edtprecio.Text) + ')';
      showmessage(SQL.Text);
      ExecSQL;

    end;
    showmessage('Se añadio un nuevo libro');
    close;

  end;

end;

procedure TCrud.limpiar_insercion;
begin
  edtid.Clear;
  edttitulo.Clear;
  edtautor.Clear;
  edtprecio.Clear;

end;

end.
