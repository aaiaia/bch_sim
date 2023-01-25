/* power form poly is mean that bit stream like 0100011000100. */
struct struct_powerFormPolynomials
{
    //unsigned int *numberOfelement;
    unsigned int length;
    unsigned int usedLength;
    char_POWER_FORM *equation;
}typedef struct_powerFormPolynomials;

struct_powerFormPolynomials *createPowerFormPolynomial(unsigned int length);
struct_powerFormPolynomials *createPowerFormPolynomialUsingString(char *string, unsigned int strLength);
char closePowerFormPolynomial(struct_powerFormPolynomials **p);
struct_powerFormPolynomials *recreatePowerFormPolynomial(struct_powerFormPolynomials **p, unsigned int length);
char setPowerFormPolynomialUsingStringAddr(struct_powerFormPolynomials *p, char *string, unsigned int usedLength, unsigned int length);
char setPowerFormPolynomialUsingStringAddr_clearStringPointer(struct_powerFormPolynomials *p, char **string, unsigned int usedLength, unsigned int length);
char copyPowerFormPolynomialFromString(struct_powerFormPolynomials *p, char *string);
//struct_powerFormPolynomials *createPowerFormPolynomialAndInputValue(char *string);
struct_powerFormPolynomials *recreatePowerFormPolynomialUsingString(struct_powerFormPolynomials **p, char *string, unsigned int strLength);
void shiftHighSidePowerFormPolynomial(struct_powerFormPolynomials *p, unsigned int length);
void shiftLowSidePowerFormPolynomial(struct_powerFormPolynomials *p, unsigned int length);
