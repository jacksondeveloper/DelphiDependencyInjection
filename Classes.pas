unit Classes;

interface

type

  iNota = interface
    ['{C00A357F-A3D9-4337-8984-B0602FE13253}']
    function Numero: integer;
  end;

  iNotaItens = interface
    ['{C00A357F-A3D9-4337-8984-B0602FE13253}']
    function RetornaNumero: integer;
  end;

  TNota = class(TInterfacedObject, iNota)
    function Numero: integer;
  end;

  TNotaItens = class(TInterfacedObject, iNotaItens)
  private
    FNota: iNota;
    function RetornaNumero: integer;
  public
    constructor Create(Nota: iNota);
  end;

implementation

{ TNota }

function TNota.Numero: integer;
begin
  Result := 10;
end;

{ TNotaItens }

constructor TNotaItens.Create(Nota: iNota);
begin
  FNota := Nota;
end;

function TNotaItens.RetornaNumero: integer;
begin
  Result := FNota.Numero;
end;

end.
