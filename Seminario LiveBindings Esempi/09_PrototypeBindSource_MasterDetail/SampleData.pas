unit SampleData;

interface

uses
 System.Generics.Collections, Model;

type

  TSampleData = class
  public
    class function CreateSampleData: TObjectList<TPerson>;
  end;

implementation

{ TSampleData }
class function TSampleData.CreateSampleData: TObjectList<TPerson>;
var
  NewPerson: TPerson;
begin
  Result := TObjectList<TPerson>.Create;

  NewPerson := TPerson.Create('Maurizio', 'Del Magno', 1);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '0541/112233', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '329/11223344', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Office', '0541/234687', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Andrea', 'Costa', 2);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '0541/445566', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '329/11255355', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Marco', 'Ricci', 3);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '0541/734573457', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '345/12662346', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Office', '0541/1112223', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Mario', 'Rossi', 4);
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Giuseppe', 'Verdi', 5);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '051/9234763764', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '335/993356567', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Francesco', 'Baracca', 6);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '051/4235552', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '335/23523555', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Omar', 'Bossoni', 7);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '051/2432348', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '335/6345457', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Thomas', 'Ranzetti', 8);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '051/34563456', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '335/1346476', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Paolo', 'Filippini', 9);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '0721/423424624', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '340/423462346', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Paolo', 'Rossi', 10);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '06/12363466', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '328/2342529879', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Mario', 'Verdi', 11);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '06/998867653', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '328/838768723', NewPerson.ID)   );
  Result.Add(NewPerson);

  NewPerson := TPerson.Create('Bruno', 'Pizzul', 12);
  NewPerson.Phones.Add(   TPhoneNumber.Create('Home', '06/4634734', NewPerson.ID)   );
  NewPerson.Phones.Add(   TPhoneNumber.Create('Mobile', '328/2323555', NewPerson.ID)   );
  Result.Add(NewPerson);
end;

end.
