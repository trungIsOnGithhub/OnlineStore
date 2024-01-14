CREATE OR REPLACE PACKAGE pkg_system_info AS
    PROCEDURE get_username_and_ip_addrr();
END pkg_system_info;

CREATE OR REPLACE PACKAGE BODY pkg_system_info AS

    PROCEDURE get_username_and_ip_addrr() AS
        username VARCHAR2(100);
        ip_address VARCHAR(100);
    BEGIN
        SELECT SYS_CONTEXT('USERENV','SESSION_USER')
            SYS_CONTEXT('USERENV','IP_ADDRESS')
        INTO username, ip_address FROM dual;

        DBMS_OUTPUT.PUT_LINE('Connected user is: ' || username
                    || ', and IP address is ' || ip_address);
    END;

END pkg_system_info;