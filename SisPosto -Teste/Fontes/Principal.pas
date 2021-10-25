unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Vcl.ImgList, System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    MenuItemMovimentos: TMenuItem;
    MenuItemAbastecimeto: TMenuItem;
    MenuItemRelatorios: TMenuItem;
    MenuItemRelatoriosAbastecimentoPorBomba: TMenuItem;
    ImageList: TImageList;
    MenuItemCadastros: TMenuItem;
    MenuItemCadastrosConfiguracoes: TMenuItem;
    MenuItemCadastrosTanques: TMenuItem;
    MenuItemCadastrosBombas: TMenuItem;
    fdConexao: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItemAbastecimetoClick(Sender: TObject);
    procedure MenuItemRelatoriosAbastecimentoPorBombaClick(Sender: TObject);
    procedure MenuItemCadastrosBombasClick(Sender: TObject);
    procedure MenuItemCadastrosTanquesClick(Sender: TObject);
    procedure MenuItemCadastrosConfiguracoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

  IdSelecionado: String;
  DescricaoSelecionada: String;

implementation

{$R *.dfm}

uses Util, ConsultaBomba, ImpressaoAbastecimentosa, ImpressaoAbastecimentos,
  CadastroConfiguracoes, CadastroTanque, CadastroBomba;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  TUtil.ConectarBanco(fdConexao);
  try
    StatusBar.Panels[0].Text := 'Data: ' + FormatDateTime('dd/mm/yyyy',Date);
  except on E: Exception do
    begin
      TUtil.Mensagem(e.Message);
      Application.Terminate();
    end;
  end;
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
var
conexao : TFDConnection;
begin
  fdConexao.Connected := False;
end;

procedure TFormPrincipal.MenuItemAbastecimetoClick(Sender: TObject);
begin
  if (FormConsultaBomba = nil) then
  begin
    Application.CreateForm(TFormConsultaBomba, FormConsultaBomba);
  end;

  FormConsultaBomba.Show();
end;

procedure TFormPrincipal.MenuItemCadastrosBombasClick(Sender: TObject);
begin
  if (FormCadastroBomba = nil) then
  begin
    Application.CreateForm(TFormCadastroBomba, FormCadastroBomba);
  end;

  FormCadastroBomba.Show();
end;

procedure TFormPrincipal.MenuItemCadastrosConfiguracoesClick(Sender: TObject);
begin
if (FormCadastroConfiguracoes = nil) then
  begin
    Application.CreateForm(TFormCadastroConfiguracoes, FormCadastroConfiguracoes);
  end;

  FormCadastroConfiguracoes.Show();
end;

procedure TFormPrincipal.MenuItemCadastrosTanquesClick(Sender: TObject);
begin
  if (FormCadastroTanque = nil) then
  begin
    Application.CreateForm(TFormCadastroTanque, FormCadastroTanque);
  end;

  FormCadastroTanque.Show();
end;

procedure TFormPrincipal.MenuItemRelatoriosAbastecimentoPorBombaClick(Sender: TObject);
begin
  if (FormImpressaoAbastecimentos = nil) then
  begin
    Application.CreateForm(TFormImpressaoAbastecimentos, FormImpressaoAbastecimentos);
  end;

  FormImpressaoAbastecimentos.Show();
end;

end.
