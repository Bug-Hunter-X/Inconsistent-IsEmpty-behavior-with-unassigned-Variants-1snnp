Function f(a,b)
  If IsEmpty(a) Or IsNull(a) Then
    a = 0
  End If
  If IsEmpty(b) Or IsNull(b) Then
    b = 0
  End If
  c = a + b
  f = c
end function