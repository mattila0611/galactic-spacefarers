import type { Request } from '@sap/cds';
import {
    validateSpacefarer
} from '../srv/galactic-logic';

function fakeReq(data: any = {}): Request {
    return {
        data,
        error: jest.fn(),
        info: jest.fn(),
    } as unknown as Request;
}

describe('GalacticService business logic', () => {
    describe('validateSpacefarer', () => {
        it('does nothing on the initial empty bootstrap call', () => {
            const req = fakeReq({});
            validateSpacefarer(req);

            expect((req.error as jest.Mock).mock.calls.length).toBe(0);
        });

        it('rejects if stardustCollected is missing or <= 0', () => {
            const req = fakeReq({
                stardustCollected: 0,
                wormholeSkill: 5,
            });

            validateSpacefarer(req);

            expect(req.error).toHaveBeenCalledWith(
                422,
                'stardustCollected must be a positive number.'
            );
        });

        it('rejects if wormholeSkill is missing or <= 0', () => {
            const req = fakeReq({
                stardustCollected: 10,
                wormholeSkill: 0,
            });

            validateSpacefarer(req);

            expect(req.error).toHaveBeenCalledWith(
                422,
                'wormholeSkill must be a positive number.'
            );
        });

        it('accepts valid values', () => {
            const req = fakeReq({
                stardustCollected: 42,
                wormholeSkill: 7,
            });

            validateSpacefarer(req);

            expect(req.error).not.toHaveBeenCalled();
        });
    });
});
