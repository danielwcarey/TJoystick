unit Jtmain;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Tjoystk;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    CheckBox5: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox6: TCheckBox;
    Joystick1: TJoystick;
    Joystick2: TJoystick;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label7: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Joystick1Button1(Sender: TObject; Pushed: Boolean);
    procedure Joystick1Button2(Sender: TObject; Pushed: Boolean);
    procedure Joystick2Button1(Sender: TObject; Pushed: Boolean);
    procedure Joystick2Button2(Sender: TObject; Pushed: Boolean);
    procedure Joystick1JoyMove(Sender: TObject; var X, Y: Integer);
    procedure Joystick2JoyMove(Sender: TObject; var X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
     Joystick1.CalibrateCenter;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     if Joystick1.Active = True then
        Joystick1.DeActivate
     else
         Joystick1.Activate;

     CheckBox5.Checked := Joystick1.Active;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if Joystick2.Active = True then
        Joystick2.DeActivate
     else
         Joystick2.Activate;

     CheckBox6.Checked := Joystick2.Active;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Joystick2.CalibrateCenter;
end;

procedure TForm1.Joystick1Button1(Sender: TObject; Pushed: Boolean);
begin
     CheckBox1.Checked:= Pushed;
     if CheckBox7.Checked = True then
        CheckBox7.Checked := False
     else
         CheckBox7.Checked := True;
end;

procedure TForm1.Joystick1Button2(Sender: TObject; Pushed: Boolean);
begin
     CheckBox2.Checked := Pushed;
     if CheckBox8.Checked = True then
        CheckBox8.Checked := False
     else
         CheckBox8.Checked := True;

end;

procedure TForm1.Joystick2Button1(Sender: TObject; Pushed: Boolean);
begin
     CheckBox3.Checked := Pushed;
     if CheckBox10.Checked = True then
        CheckBox10.Checked := False
     else
         CheckBox10.Checked := True;

end;

procedure TForm1.Joystick2Button2(Sender: TObject; Pushed: Boolean);
begin
     CheckBox4.Checked := Pushed;
     if CheckBox11.Checked = True then
        CheckBox11.Checked := False
     else
         CheckBox11.Checked := True;

end;

procedure TForm1.Joystick1JoyMove(Sender: TObject; var X, Y: Integer);
begin
     Edit1.Text := IntToStr( X );
     Edit2.Text := IntToStr( Y );
     if CheckBox9.Checked = True then
        CheckBox9.Checked := False
     else
         CheckBox9.Checked := True;

end;

procedure TForm1.Joystick2JoyMove(Sender: TObject; var X, Y: Integer);
begin
     Edit3.Text := IntToStr( X );
     Edit4.Text := IntToStr( Y );
     if CheckBox12.Checked = True then
        CheckBox12.Checked := False
     else
         CheckBox12.Checked := True;

end;

end.
