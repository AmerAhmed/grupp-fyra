from app.controllers.controllers import get_car_parts, get_offices_info


def main():
    get_car_parts()
    print('-', 40)
    get_offices_info()


if __name__ == '__main__':
    main()
