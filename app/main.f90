program main

  use mmodule
  implicit none

  type(moa_view_type) :: view
  integer, dimension(1) :: i
  integer(kind=int64) :: idx
  integer, pointer :: elem
  logical :: found
  integer(kind=int64) :: max_inc

  max_inc = 100000000_int64

  print *, ':: testing get_pointer'
  call start_timer
  do idx = 1, max_inc
    call get_pointer(view, i, elem, found)
  end do
  call stop_timer

  print *, ':: testing get_pointer_dummy'
  call start_timer
  do idx = 1, max_inc
    call get_pointer_dummy(i, elem, found)
  end do
  call stop_timer

end program main
