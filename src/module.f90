module mmodule
  use iso_fortran_env

  implicit none
  type moa_basic_view
      integer              :: dim
      integer, allocatable :: shp(:)
      integer, pointer     :: array(:) => null()
  end type moa_basic_view

  type moa_view_type
      integer                           :: cached = 1
      integer, ALLOCATABLE              :: prev_elem(:)
      type(moa_basic_view), ALLOCATABLE :: array(:)
  end type moa_view_type

  integer                            :: time_first, time_last, time_rate
  real                               :: cpu_first, cpu_last
  integer                            :: lurep = outPUT_UNIT

contains

  ! start_timer
  !     initialise the time, so that we can keep track of how much wall clock/system time is spent
  !
  ! Arguments:
  !     None
  !
  subroutine start_timer

      call system_clock( count = time_first, count_rate = time_rate )
      call cpu_time( cpu_first )

  end subroutine start_timer

  ! stop_timer
  !     Measure the elapsed time and report it
  !
  ! Arguments:
  !     None
  !
  subroutine stop_timer

      call system_clock( count = time_last )
      call cpu_time( cpu_last )

      write( lurep, '(a,g12.6)' ) 'Wall clock (s): ', (time_last - time_first) / real(time_rate)
      write( lurep, '(a,g12.6)' ) 'CPU time (s):   ',  cpu_last  - cpu_first

  end subroutine stop_timer


  subroutine get_pointer_dummy(idx, elem, found)
    ! CLASS(moa_view_type), intent(inout) :: view
    integer, dimension(:), intent(in)   :: idx
    integer, pointer                    :: elem
    logical, intent(out)                :: found

    ! integer, dimension(SIZE(idx))       :: idxr
    ! integer                             :: i
    ! integer                             :: sz
    ! integer                             :: firstidx
    ! integer                             :: start

    integer, target, save :: dummy

    found = .TRUE.
    elem => dummy
    return
  end subroutine get_pointer_dummy

  subroutine get_pointer(view, idx, elem, found)
    CLASS(moa_view_type), intent(inout) :: view
    integer, dimension(:), intent(in)   :: idx
    integer, pointer                    :: elem
    logical, intent(out)                :: found

    ! integer, dimension(SIZE(idx))       :: idxr
    ! integer                             :: i
    ! integer                             :: sz
    ! integer                             :: firstidx
    ! integer                             :: start

    integer, target, save :: dummy

    found = .TRUE.
    elem => dummy
    return
  end subroutine get_pointer
end module mmodule