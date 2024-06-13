unit edit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TfEdit }

  TfEdit = class(TForm)
    bCancel: TBitBtn;
    bSave: TBitBtn;
    CBNote: TComboBox;
    eWarehouse: TCheckBox;
    eName: TEdit;
    ePrice: TEdit;
    eMaker: TEdit;
    name: TLabel;
    price: TLabel;
    maker: TLabel;
    category: TLabel;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  fEdit: TfEdit;

implementation

{$R *.lfm}

{ TfEdit }
procedure TfEdit.FormShow(Sender: TObject);
begin
  eName.SetFocus;
end;


end.

end.

