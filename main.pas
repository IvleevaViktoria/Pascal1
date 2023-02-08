{

Ивлеева Виктория 21ис-21
Задание уровня 21ис-21Упражнение 21ис-21
Уровень 1
Упражнение 2

}
Program P2;
Type Mset=Set of 'a'..'z';
Var S1, S2, S3: String;
MS1, MS2, MS3 : Mset;
C: Char;
Procedure SM (S: String; Var MS: Mset); {Процедуры формируют множество MS, содержащее все символы строки S  }
  Var I: Byte;
  Begin MS:=[];
    For I:=1 To Length (S) Do
    MS:=MS+[S[I]]
  End;
Begin {Ввод исходных строк}
  ReadLn (S1);
  ReadLn (S2); {Формирование множеств MS1 и MS2 из символов строк S1 и S2 }
  SM (S1, MS1);
  SM (S2, MS2); {Выделение общих элементов в множество MS3 }
  MS3:=MS1*MS2; {Формирование результирующей строки S3}
  S3:=' ';
  For C:='a' To 'z' Do
    If C In MS3 Then S3:=S3+C;
  WriteLn ('‘Результат:', S3)
End.