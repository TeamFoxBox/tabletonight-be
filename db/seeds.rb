





user1 = User.create(name: 'John Smith', email: 'test1@test.com', username: 'test1@test.com', password: 'Test1234', password_confirmation: 'Test1234')
user2 = User.create(name: 'Tracey Blah', email: 'test2@test.com', username: 'test2@test.com', password: 'Test1234', password_confirmation: 'Test1234')

booking1 = Booking.create(user_id:1, table: 'Table 1', date: '2018-10-10', time: '17:00', party_size:2)
booking2 = Booking.create(user_id:2, table: 'Table 2', date: '2018-10-10', time: '17:00', party_size:4)

#
# res1 = Restaurant.create(res_name: 'Blind Burro')
# res2= Restaurant.create(res_name: 'Oscars')
#
# table1 = Table.create(restaurant_id: 1, table_num: 1)
# table2 = Table.create(restaurant_id: 1, table_num: 2)
# table3 = Table.create(restaurant_id: 1, table_num: 3)
# table4 = Table.create(restaurant_id: 1, table_num: 4)
# table5 = Table.create(restaurant_id: 1, table_num: 5)
# table6 = Table.create(restaurant_id: 2, table_num: 1)
# table7 = Table.create(restaurant_id: 2, table_num: 2)
# table8 = Table.create(restaurant_id: 2, table_num: 3)
# table9 = Table.create(restaurant_id: 2, table_num: 4)
# table10 = Table.create(restaurant_id: 2, table_num: 5)
#
# appt1 = Appointment.create(table_id: 1, date: '10-10-2018', time_start: '13:00', time_end: '13:59')
# appt2 = Appointment.create(table_id: 1, date: '10-10-2018', time_start: '14:00', time_end: '14:59')
# appt3 = Appointment.create(table_id: 1, date: '10-10-2018', time_start: '15:00', time_end: '15:59')
# appt4 = Appointment.create(table_id: 2, date: '10-10-2018', time_start: '13:00', time_end: '13:59')
# appt5 = Appointment.create(table_id: 2, date: '10-10-2018', time_start: '14:00', time_end: '14:59')
# #
# # res1 = Reservation.create(user_id: 1, appointment_id: 1, booked: false)
# # res2 = Reservation.create(user_id: 2, appointment_id: 2, booked: true)
# # res3 = Reservation.create(user_id: 1, appointment_id: 3, booked: true)
# # res4 = Reservation.create(user_id: 2, appointment_id: 4, booked: false)
#
# res1 = Reservation.create(user_id: 1, appointment_id: 1, table_id: 1, restaurant_id: 1, booked: false)
# res2 = Reservation.create(user_id: 2, appointment_id: 2, table_id: 1, restaurant_id: 1, booked: true)
# res3 = Reservation.create(user_id: 1, appointment_id: 3, table_id: 1, restaurant_id: 1, booked: true)
# res4 = Reservation.create(user_id: 2, appointment_id: 4, table_id: 2, restaurant_id: 1, booked: false)


# @history = UserHistory.includes(:movement, :workout).where(user_id: params[:id]).pluck_to_hash(:user_id, :workout_name, :difficulty, :workout_date, :duration, :set, :movement_id, :movement_name, :rep, :weight)
#
 # @res = Reservation.includes(:user, :appointment, :table).where(user_id: 1).pluck_to_hash(:name, :booked, :email,:date, :time_start, :time_end, :table_num)
 #
 # @res = Reservation.includes(:appointment, :table).where(id: 1).pluck_to_hash(:table_id, :table_num)
 #
 # @res = Reservation.joins(:appointment, :table).where(id: 1)
