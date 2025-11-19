import { Request } from '@sap/cds';

export function validateSpacefarer(req: Request) {
  const { stardustCollected, wormholeSkill } = req.data as any;

  if (stardustCollected === undefined && wormholeSkill === undefined) return;

  if (stardustCollected == null || stardustCollected <= 0) {
    req.error(422, 'stardustCollected must be a positive number.');
  }

  if (wormholeSkill == null || wormholeSkill <= 0) {
    req.error(422, 'wormholeSkill must be a positive number.');
  }
}

export function welcomeSpacefarer(data: any, req: Request) {
  const fullName = `${data.firstName ?? ''} ${data.lastName ?? ''}`.trim();
  if (fullName) {
    req.info(`Welcome aboard, ${fullName}!`);
  }
}