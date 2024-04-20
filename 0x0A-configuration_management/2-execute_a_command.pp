# kill process killmenow brunookoth44@gmail.com

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
